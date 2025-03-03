# Yelp Customer Reviews Realtime Streaming

### Introduction


### System Architecture
![Architecture Diagram](https://github.com/alycet/yelp_realtime_streaming/blob/main/Yelp_Streaming_Architecture.png)
### About the Data
The Yelp Open Dataset is a subset of Yelp data that is intended for educational use. It provides real-world data related to businesses including reviews, photos, check-ins, and attributes like hours, parking availability, and ambience.  It contains about 7 million reviews and 150,000 business across 11 metropolitan areas.  For this project, we will be using the customer reviews data which contains full review text data including the user_id that wrote the review and the business_id the 
review is written for. You can download the dataset [here](https://business.yelp.com/data/resources/open-dataset/).


### Sevices/Tools Used

1. **TCP/IP Socket**:
2. **Apache Spark**:
3.  **Confluent Kafka**: Confluent is a cloud-based data streaming platform that helps users store, access, and manage data in real time. It's built on Apache Kafka, but includes additional tools and services.
4.  **Confluent Control Center and Schema Registry**:
5.  **Kafka Connect**:
6.  **Snowflake**: Snowflake is a cloud-based data warehouse platform that allows users to store, analyze, and exchange data. It's a Software as a Service (SaaS) platform that's designed to be scalable and flexible.
7.  **Docker**: Docker is a software platform that allows developers to create, test, and deploy applications quickly. It uses containers, which are standardized units that contain all the software required to run an application.

### Packages

```
annotated-types==0.7.0
anyio==4.8.0
attrs==25.1.0
certifi==2025.1.31
colorama==0.4.6
confluent-kafka==2.8.0
distro==1.9.0
fastavro==1.10.0
h11==0.14.0
httpcore==1.0.7
httpx==0.28.1
idna==3.10
jiter==0.8.2
numpy==2.2.3
openai==1.63.2
pandas==2.2.3
py4j==0.10.9.7
pydantic==2.10.6
pydantic_core==2.27.2
pyspark==3.5.4
python-dateutil==2.9.0.post0
pytz==2025.1
six==1.17.0
sniffio==1.3.1
tqdm==4.67.1
typing_extensions==4.12.2
tzdata==2025.1

```

### Project Execution Flow
1. ***Extract***
   
     * text
     * text
     * text
     * text
     * text
       
  
  

2.  ***Transform***

     * text
     * text
     * text
     * text


3.  ***Load***
   
    * text
    * text
    * text
