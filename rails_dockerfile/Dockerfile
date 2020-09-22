FROM ubuntu:bionic
RUN apt-get update; \
  apt-get install -y apt-utils \
    sudo \
    libpq-dev; \
  useradd -ms /bin/bash -g sudo zala; \
  echo "zala:tamarindo" | chpasswd; \
  echo "zala ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER zala
WORKDIR /home/zala
RUN sudo apt-get update; \
  sudo apt-get install -y vim \
    git \
    git-core \
    exuberant-ctags \
    curl \
    gnupg2 \
    ca-certificates \
    build-essential \
    xvfb \
    libgtk-3-dev \
    libnotify-dev \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2; \
  curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -; \
  sudo apt-get install -y nodejs; \
  sudo apt-get clean; \
  gpg2 --keyserver hkp://keys.gnupg.net --recv-keys \
    409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB; \
  curl -sSL https://get.rvm.io | bash -s; \
  echo "source /home/zala/.rvm/scripts/rvm" >> /home/zala/.bashrc
RUN /bin/bash -l -c "rvm install 2.5.3; \
  gem install bundler; \
  git clone git://github.com/zalapeach/dotfiles.git ~/.dotfiles; \
  cd ~/.dotfiles; \
  ./install.sh"
CMD ["/bin/bash", "-l"]
