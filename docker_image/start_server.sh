#!/bin/bash
set -e

echo MLFLOW_S3_ENDPOINT_URL:    "${MLFLOW_S3_ENDPOINT_URL}"
echo starting mlflow server...

mlflow server --backend-store-uri sqlite:////data/mlflow/mlflow.db \
    --default-artifact-root s3://mlflow/artifacts \
    --host=0.0.0.0 --port=5123
