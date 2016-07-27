FROM ubuntu:14.04
MAINTAINER Gildardo Maravilla <gilmrjc@gmail.com>

RUN set -x \
    && pythonVersions='python2.7 python3.3 python3.4 python3.5' \
    && apt-get update \
    && apt-get install -y --no-install-recommends software-properties-common \
    && apt-add-repository -y ppa:fkrull/deadsnakes \
    && apt-add-repository -y ppa:pypy/ppa \
    && apt-get update \
    && apt-get install -y --no-install-recommends $pythonVersions \
    && apt-get install -y --no-install-recommends pypy \
    && apt-get install -y --no-install-recommends python-pip python3-pip \
    && apt-get install -y --no-install-recommends python-dev python3-dev \
    && apt-get install -y --no-install-recommends build-essential \
    && apt-get install -y --no-install-recommends libtiff5-dev libjpeg8-dev zlib1g-dev \
    libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python-tk \
    && apt-get purge -y --auto-remove software-properties-common \
    && rm -rf /var/lib/apt/lists/*

CMD bash
