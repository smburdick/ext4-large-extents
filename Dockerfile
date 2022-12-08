FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install libelf-dev xz-utils gcc make flex bison bc libncurses5-dev \
    libncursesw5-dev aptitude libssl-dev pkg-config -y
RUN apt-get update
RUN apt-get install sudo parted -y

COPY .config /root/
COPY ./linux/ /root/

RUN chpasswd "root:root"
USER root

WORKDIR /root/

RUN make
