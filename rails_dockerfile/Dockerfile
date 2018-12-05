FROM ubuntu:bionic
RUN apt-get update && apt-get install -y sudo
RUN useradd -ms /bin/bash -g sudo zala && \
  echo "zala:tamarindo" | chpasswd && \
  echo "zala ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER zala
RUN sudo apt-get install -y vim \
  git \
  git-core \
  exuberant-ctags
