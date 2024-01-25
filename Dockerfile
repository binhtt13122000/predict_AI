FROM python:3.8

COPY requirements.txt /opt/
RUN pip install --upgrade pip
RUN pip install --default-timeout=120 -r /opt/requirements.txt

WORKDIR /opt
COPY Checkpoints Checkpoints 
COPY app.py app.py

CMD  ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]