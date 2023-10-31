FROM python:3.9.18-bullseye

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

COPY src /src
WORKDIR /src
CMD ["python", "server.py"]