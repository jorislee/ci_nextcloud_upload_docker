# nextcloud upload file docker

## Dockerfile

  ``` shell
  FROM ubuntu:18.04

  MAINTAINER The deploy Project <lqq@sioiot.com>

  RUN apt-get update && apt-get install -y \
      apt-utils \
      git \
      zip \
      unzip \
      wget \
      python3 \
      python3-pip \
      && pip3 install --upgrade pip \
      && apt-get autoremove -y \
      && rm -rf /var/lib/apt/lists/*

  RUN git clone --recursive https://github.com/sioiot/nextcloud-API.git nextcloud_upload \
      && cd nextcloud_upload && pip --no-cache-dir install -r requirements.txt && cd -

  CMD [ "/bin/bash" ]
  ```

## License

MIT License.

## Acknowledgments

* Stackoverflow
