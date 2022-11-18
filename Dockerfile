FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
  texlive-full \
  && rm -rf /var/lib/apt/lists/*
  
RUN apt-get install -y curl \
  && curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - \
  && apt-get install -y nodejs \
  && rm -rf /var/lib/apt/lists/*
