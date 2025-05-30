import json
import socket
import time
import pandas as pd

def handle_date(obj):
    if isinstance(obj, pd.Timestamp):
        return obj.strftime('%Y-%m-%d %H:%M:%S')
    raise TypeError("Object of type %s is not serializable" % type(obj).__name__)

def send_data_over_socket(file_path, host = 'spark-master', port = 9999, chunk_size = 5):
    #creating the streaming object
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    #binding the host and port
    s.bind((host, port))
    s.listen(1)
    print(f'Listening for connections on {host}:{port}')


    last_sent_index = 0
    while True:
        conn, addr = s.accept()
        print(f"Connection from {addr}")
        try:
            with open(file_path, 'r', encoding='utf-8') as file:
                #skipping lines that were already sent
                for _ in range(last_sent_index):
                    next(file)

                records = []
                for line in file:
                    records.append(json.loads(line))
                    if len(records) == chunk_size:
                        chunk = pd.DataFrame(records) #converting dictionary to dataframe to visualize data
                        print(chunk) 
                        for record in chunk.to_dict(orient= 'records'): #converting back to dictonary
                            serialize_data = json.dumps(record, default = handle_date).encode('utf-8') #serializeing and encodeing data to be sent over the socket
                            conn.send(serialize_data + b'\n')
                            time.sleep(5)
                            last_sent_index +=1

                        records = []
        except (BrokenPipeError, ConnectionResetError):
            print("Client disconnected.")
        finally:
            conn.close()
            print("Connection closed.")

if __name__ == "__main__":
    send_data_over_socket("datasets/yelp_academic_dataset_review.json")
    





