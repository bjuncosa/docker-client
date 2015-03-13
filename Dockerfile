FROM debian:jessie

ENV TMP_PACKAGES="curl unzip"
ENV PACKAGES="python python-pip"

RUN apt-get update && apt-get install -qy ${TMP_PACKAGES}
RUN apt-get install -qy ${PACKAGES}

WORKDIR /usr/src
RUN curl -sSL -O https://get.docker.com/builds/Linux/x86_64/docker-1.5.0 && \
    chmod +x docker-1.5.0 && \
    mv docker-1.5.0 /usr/local/bin/docker

RUN pip install -U docker-compose

RUN curl -L -s https://dl.bintray.com/mitchellh/consul/0.5.0_linux_amd64.zip -o consul.zip && \
    unzip consul.zip && \
    mv consul /usr/local/bin/ && \
    rm -f consul.zip

