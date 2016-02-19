FROM gliderlabs/alpine:latest
MAINTAINER Bram Mittendorff <botw44@gmail.com>

RUN apk add --update \
    bash \
    zlib \
    curl \
    jpeg \
    libpng \
    tiff \
    python \
    python-dev \
    py-pip \
    build-base \
    wget \
    postgresql-dev \
  && ln -s /lib/libz.so /usr/lib/ \
  && pip install virtualenv \
  && apk update \
  && apk upgrade \
  && pip install --upgrade pip \
  && pip install wagtail \
  && rm -rf /var/cache/apk/*

COPY . /app
WORKDIR /app

ONBUILD RUN virtualenv /env \
  && /env/bin/pip install -r /app/requirements.txt
