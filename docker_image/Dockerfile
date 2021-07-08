FROM python:3.8-slim-buster

COPY requirements.txt start_server.sh ./

RUN apt-get update && apt-get install -y python3 && \
    pip install -r requirements.txt && \
    chmod +x start_server.sh

WORKDIR /data/mlflow
ENTRYPOINT ["/start_server.sh" ]
