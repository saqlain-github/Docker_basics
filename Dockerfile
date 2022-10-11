FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip install flask
RUN mkdir app

WORKDIR /opt/app
COPY . /opt/app
ENTRYPOINT FLASK_APP=/opt/app/app.py flask run --host 0.0.0.0