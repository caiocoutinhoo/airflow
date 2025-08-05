ARG AIRFLOW_IMAGE=apache/airflow:3.0.3
FROM ${AIRFLOW_IMAGE}

USER root
RUN apt-get update && apt-get install -y git build-essential && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER airflow
COPY airflow/requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt
