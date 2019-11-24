# $ docker build . -t wallet-inverstor-parser:latest

FROM python:3.7-slim

RUN apt-get update && apt-get install

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . ./
ENV PYTHONPATH=${PYTHONPATH}:`pwd`

CMD ["python", "run.py"]
