FROM python:3.7.0
ARG storage_url

LABEL maintainer "Daniel van der Ende <daniel.vanderende@gmail.com>"

RUN mkdir /mlflow/

RUN pip install mlflow==0.8.0 azure-storage

EXPOSE 5000

CMD mlflow server \
    --file-store /mlflow \
    --default-artifact-root $storage_url
    --host 0.0.0.0
