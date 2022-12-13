FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
  && apt install -y texlive-full \
  && apt install -y curl wget \
  && curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
  && apt install -y nodejs \
  && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
  && dpkg -i google-chrome-stable_current_amd64.deb \
  && apt install -f -y \
  && rm -rf google-chrome-stable_current_amd64.deb \
  && rm -rf /var/lib/apt/lists/*
