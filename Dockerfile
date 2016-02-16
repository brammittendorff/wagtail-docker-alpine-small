FROM gliderlabs/alpine:latest
MAINTAINER Bram Mittendorff <botw44@gmail.com>

RUN apk add --update \
    bash \
    zlib \
    zlib-dev \
    curl \
    jpeg \
    jpeg-dev \
    libpng \
    libpng-dev \
    tiff \
    tiff-dev \
    python \
    python-dev \
    py-pip \
    build-base \
    openssl \
    wget \
    ca-certificates \
    postgresql-dev \
  && ln -s /lib/libz.so /usr/lib/ \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/* \
  && apk update \
  && apk upgrade \
  && pip install --upgrade pip \
  && pip install wagtail

COPY . /app
WORKDIR /app

ONBUILD RUN virtualenv /env \
  && /env/bin/pip install -r /app/requirements.txt
