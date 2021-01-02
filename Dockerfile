FROM ubuntu:18.04

MAINTAINER The deploy Project <lqq@sioiot.com>

RUN apt-get update && apt-get install -y \
    apt-utils \
    git \
    unzip \
    wget \
    python3 \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

RUN python -m pip --no-cache-dir install --upgrade pip

RUN git clone --recursive https://github.com/sioiot/nextcloud-API.git nextcloud_upload \
    && cd nextcloud_upload && pip --no-cache-dir install -r requirements.txt && cd -

CMD [ "/bin/bash" ]
