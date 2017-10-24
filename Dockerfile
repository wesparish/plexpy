FROM ubuntu:16.04

ARG version=master

WORKDIR /opt/plexpy

RUN apt-get update && \
    apt-get install -y git python && \
    apt-get clean

RUN git clone https://github.com/JonnyWong16/plexpy.git . && \
    git checkout $ARG

EXPOSE 8181

VOLUME /data

CMD [ "python", "PlexPy.py", "--datadir", "/data" ]
