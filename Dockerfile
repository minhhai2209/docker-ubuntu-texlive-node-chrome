FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
  texlive-full \
  && rm -rf /var/lib/apt/lists/*
  
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - \
  && apt install -y nodejs \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
  && dpkg -i google-chrome-stable_current_amd64.deb \
  && apt íntall -f -y \
  && rm -rf google-chrome-stable_current_amd64.deb \
  && rm -rf /var/lib/apt/lists/*
