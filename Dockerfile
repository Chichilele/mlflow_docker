FROM python:3.8-slim-buster

WORKDIR /data/mlflow/

COPY requirements.txt start_server.sh ./

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
RUN pip install -r requirements.txt

# Run the application:
CMD ["bash", "start_setver.sh"]








RUN apt-get update && apt-get install -y python3 python3-venv &&\
    python3 -m venv pyenv_mlflow && \
    bash pyenv_mlflow/bin/activate &&\
    pip install -r requirements.txt

RUN chmod +x start_server.sh

ENTRYPOINT ["./start_server.sh" ]