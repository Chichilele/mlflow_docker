#!/bin/bash
set -e

export MLFLOW_S3_ENDPOINT_URL=http://192.168.0.58:9000
export AWS_ACCESS_KEY_ID=user01
export AWS_SECRET_ACCESS_KEY=password

echo MLFLOW_S3_ENDPOINT_URL:    "${MLFLOW_S3_ENDPOINT_URL}"

# . /data/mlflow/pyenv_mlflow/bin/activate


mlflow server --backend-store-uri sqlite:////data/mlflow/mlflow.db --default-artifact-root s3://mlflow/artifacts --host=0.0.0.0 --port=5123

