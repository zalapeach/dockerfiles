FROM debian:jessie
RUN apt-get update && apt-get install -y \ 
  git \
  python \
  vim
