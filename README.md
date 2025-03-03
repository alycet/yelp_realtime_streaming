# Yelp Customer Reviews Realtime Streaming

## Table of Contents
- [Introduction](https://github.com/alycet/yelp_realtime_streaming/blob/main/README.md#introduction)
- [System Architecture](https://github.com/alycet/yelp_realtime_streaming/tree/main?tab=readme-ov-file#system-architecture)
- [About the Data](https://github.com/alycet/yelp_realtime_streaming/tree/main?tab=readme-ov-file#about-the-data)
- [Services/Tools Used](https://github.com/alycet/yelp_realtime_streaming/tree/main?tab=readme-ov-file#sevicestools-used)
- [Packages](https://github.com/alycet/yelp_realtime_streaming/blob/main/README.md#packages)
- [Project Execution Flow](https://github.com/alycet/yelp_realtime_streaming/blob/main/README.md#project-execution-flow)


## Introduction
Welcome to the Yelp Customer Reviews Realtime Streaming project! This repository provides a comprehensive guide to building a fully integrated data pipeline that showcases modern data engineering practices. By leveraging powerful technologies such as TCP/IP Socket, Apache Spark, OpenAI LLM (ChatGPT), Apache Kafka, and Snowflake, this project offers a seamless workflow for data acquisition, processing, analysis, and storage.

The pipeline covers the following key stages:

1. **Data Acquisition**: Collect streaming data using TCP/IP Socket for real-time ingestion.
2. **Data Processing**: Utilize Apache Spark to process, clean, and transform the acquired data for downstream analysis.
3. **Sentiment Analysis with ChatGPT**: Perform sentiment analysis on the processed data using OpenAI's language model to extract valuable insights.
4. **Publishing to Kafka**: Push the analyzed data into a Kafka topic for distributed processing and scalability.
5. **Integration with Snowflake**: Store the final processed data in Snowflake, enabling efficient querying and advanced analytics.

This project is designed to serve as a foundational blueprint for building scalable and reliable data pipelines that integrate advanced machine learning models with modern data platforms. Whether you're a data engineer, machine learning enthusiast, or tech hobbyist, this repository will equip you with the skills to create robust and production-ready data workflows.

## System Architecture
![Architecture Diagram](https://github.com/alycet/yelp_realtime_streaming/blob/main/Yelp_Streaming_Architecture.png)
## About the Data
The Yelp Open Dataset is a subset of Yelp data that is intended for educational use. It provides real-world data related to businesses including reviews, photos, check-ins, and attributes like hours, parking availability, and ambience.  It contains about 7 million reviews and 150,000 business across 11 metropolitan areas.  For this project, we will be using the customer reviews data which contains full review text along with the user_id that wrote the review and the business_id the 
review is written for. You can download the dataset [here](https://business.yelp.com/data/resources/open-dataset/).


## Sevices/Tools Used

1. **TCP/IP Socket**: A TCP/IP socket is a virtual endpoint on a computer network that allows applications to send and receive data over the Transmission Control Protocol (TCP) using the Internet Protocol (IP
2. **Apache Spark**: Apache Spark is a free, open-source framework for processing large amounts of data in real time
3. **Confluent Kafka**: Confluent is a cloud-based data streaming platform that helps users store, access, and manage data in real time. It's built on Apache Kafka, but includes additional tools and services.
4. **Confluent Control Center**: Confluent Control Center is a web-based tool that allows users to manage and monitor Apache Kafka clusters within Confluent Platform, providing a user interface to view cluster health, manage topics, observe message flows, and interact with features like Schema Registry
5. **Confluent Schema Registry**: Confluent Schema Registry is a centralized repository within the Confluent Platform that allows developers to store, manage, and retrieve data schemas used for serializing messages in Apache Kafka
6. **Kafka Connect**: Kafka Connect is a free, open-source tool that allows users to integrate data between Apache Kafka and other systems
7. **Snowflake**: Snowflake is a cloud-based data warehouse platform that allows users to store, analyze, and exchange data. It's a Software as a Service (SaaS) platform that's designed to be scalable and flexible.
8. **Docker**: Docker is a software platform that allows developers to create, test, and deploy applications quickly. It uses containers, which are standardized units that contain all the software required to run an application.

## Packages

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

## Project Execution Flow
Set Up the Environment:

1. **Clone the repository from GitHub**:

      - Naviagate to the project directory.
      - Use Docker Compose to launch and initialize the Spark cluster.

2. **Initialize the TCP/IP Socket**:
      - Start the TCP/IP socket server to simulate real-time data streaming.
      - The server streams data from the Yelp dataset in chunks to mimic a live data feed.

3. **Data Processing with Apache Spark**:
      - Launch the Apache Spark cluster (master and worker nodes).
      - Spark processes the incoming data stream, performing transformations and cleaning.

4. **Sentiment Analysis with OpenAI LLM**:

      - Integrate OpenAI's language model (e.g., ChatGPT) to analyze the sentiment of Yelp reviews.
      - The model extracts insights such as positive, negative, or neutral sentiments from the reviews text column.

5. **Publish Data to Kafka**:

      - Push the processed and enriched data (including sentiment analysis results) to a Kafka topic.
      - Kafka acts as a distributed messaging system for scalable data handling.

6. **Ingest Data into Snowflake**:

      - Use Kafka Connect sink to stream data from Kafka to Snowflake.

7. **Monitor and Optimize**:

      - Continue to monitor the pipeline's performance using the Kafka Control Center and Spark UI.

