FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison
RUN apt-get install -y wget bear kmod

RUN apt-get install -y sudo
RUN useradd -m wing
RUN passwd -d wing
RUN printf 'wing ALL=(ALL) ALL\n' | tee -a /etc/sudoers # Allow wing passwordless sudo

USER wing

RUN mkdir -p /home/wing/Documents/github/kernel_compile
WORKDIR /home/wing/Documents/github/kernel_compile
