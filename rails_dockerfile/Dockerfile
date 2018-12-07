FROM ubuntu:bionic
RUN apt-get update && apt-get install -y sudo
RUN useradd -ms /bin/bash -g sudo zala && \
  echo "zala:tamarindo" | chpasswd && \
  echo "zala ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER zala
RUN sudo apt-get update && \
  sudo apt-get install -y vim \
    git \
    git-core \
    exuberant-ctags \
    curl \
    gnupg2 \
    ca-certificates \
    build-essential && \
  sudo apt-get clean
RUN gpg2 --keyserver hkp://keys.gnupg.net --recv-keys \
  409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN curl -sSL https://get.rvm.io | bash -s
RUN /bin/bash -l -s ". /etc/profile.d/rvm.sh && rvm install 2.5.0"
ENTRYPOINT ["/bin/bash", "-l", "-c"]
