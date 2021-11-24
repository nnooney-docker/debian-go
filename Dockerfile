FROM ghcr.io/nnooney-docker/base-user:main

LABEL maintainer="Nicholas Nooney <nicholasnooney@gmail.com>"

RUN apt update && apt install -y -q --no-install-recommends \
  apt-transport-https \
  build-essential \
  ca-certificates \
  curl \
  git \
  golang \
  gpg \
  libssl-dev \
  ssh \
  wget \
  && apt autoremove -y && apt clean -y
