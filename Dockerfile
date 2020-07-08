FROM ubuntu:20.04
COPY . /tlog

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential autoconf libtool libjson-c-dev pkg-config libsystemd-dev libcurl4-openssl-dev
RUN cd tlog && autoreconf -i -f && ./configure && make install
