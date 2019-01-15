FROM python:3.6-slim

MAINTAINER "Zergoverlord" <zergoverlord@rediffmail.com>
RUN apt-get update && apt-get install -y gcc python3-dev

WORKDIR /opt/relay
ADD . /opt/relay
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt

EXPOSE 8080

CMD ["bash", "bin/run.sh"]
