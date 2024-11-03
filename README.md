# Realtime Data Streaming

## Table of Contents
- [Introduction](#introduction)
- [System Architecture](#system-architecture)
- [Technologies](#technologies)
- [Getting Started](#getting-started)


## Introduction

This repository contains a personal project designed to enhance my skills in Data Engineering. It covers each stage from data ingestion to processing and finally to storage, utilizing a robust tech stack that includes Apache Airflow, Python, Apache Kafka, Apache Zookeeper, Apache Spark, and Cassandra. 

## System Architecture
![System Architecture](https://github.com/hunglk25/realtime-data-streaming/blob/05583e51b336083fef4adb39f0776c5f703e0722/Data%20engineering%20architecture%20.png)

The project is designed with the following components:

- **Data Source**: We use `randomuser.me` API to generate random user data for our pipeline.
- **Apache Airflow**: Responsible for orchestrating the pipeline and storing fetched data in a PostgreSQL database.
- **Apache Kafka and Zookeeper**: Used for streaming data from PostgreSQL to the processing engine.
- **Control Center and Schema Registry**: Helps in monitoring and schema management of our Kafka streams.
- **Apache Spark**: For data processing with its master and worker nodes.
- **Cassandra**: Where the processed data will be stored.

## Technologies

- Apache Airflow
- Python
- Apache Kafka
- Apache Zookeeper
- Apache Spark
- Cassandra
- PostgreSQL
- Docker

## Getting Started

1. Clone the repository:
    ```bash
    git clone https://github.com/hunglk25/realtime-data-streaming.git
    ```

2. Navigate to the project directory:
    ```bash
    cd realtime-data-streaming
    ```
3. Run virtual environment:
    ```bash
    source venv/bin/activate
    ```

4. Run Docker Compose to spin up the services:
    ```bash
    docker compose up
    ```
5. Run Python file to read data from Kafka and insert it into a Cassandra table after trigger DAG
    ```bash
    python3 spark_stream.py
    ```
