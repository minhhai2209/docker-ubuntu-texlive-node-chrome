FROM minhhai2209/docker-ubuntu-texlive:v0.0.1

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
  && apt install -y curl wget \
  && curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
  && apt install -y nodejs \
  && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
  && apt install -y ./google-chrome-stable_current_amd64.deb \
  && rm -rf google-chrome-stable_current_amd64.deb \
  && rm -rf /var/lib/apt/lists/*
