FROM ubuntu

MAINTAINER Robert F. DeJaco <dejac001@umn.edu>
USER root

RUN apt-get update && apt-get -y install apt-utils \
    && DEBIAN_FRONTEND="noninteractive" \
    apt-get -y install \
        git gcc g++ gfortran patch wget pkg-config make \
        liblapack-dev libmetis-dev libmumps-dev libblas-dev \
    && cd /root && git clone https://github.com/dejac001/CoinIpopt.git
