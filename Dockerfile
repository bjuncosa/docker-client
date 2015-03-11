FROM debian:jessie

RUN apt-get update && apt-get install -qy curl

RUN curl -sSL -O https://get.docker.com/builds/Linux/x86_64/docker-1.5.0 && \
    chmod +x docker-1.5.0 && \
    mv docker-1.5.0 /usr/local/bin/docker


