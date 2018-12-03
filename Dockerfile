FROM python:3.7.0

LABEL maintainer "Daniel van der Ende <daniel.vanderende@gmail.com>"

RUN mkdir /mlflow/

RUN pip install mlflow==0.8.0

EXPOSE 5000

CMD mlflow server \
    --file-store /mlflow \
    --host 0.0.0.0
