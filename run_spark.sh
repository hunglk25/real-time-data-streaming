#!/bin/bash

spark-submit --master spark://localhost:7077 \
    --conf "spark.pyspark.python=/home/hwnglk25/DE/project1/venv/bin/python" \
    --conf "spark.jars.packages=org.apache.spark:spark-sql-kafka-0-10_2.12:3.5.3" \
    spark_stream.py
