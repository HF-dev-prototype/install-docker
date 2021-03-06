FROM ubuntu

RUN apt-get update
RUN apt-get -y install python python-pip vim
RUN pip install flask
COPY appy.py /opt

ENTRYPOINT FLASK_APP=/opt/appy.py flask run --host=0.0.0.0
