FROM ubuntu:latest

RUN apt-get update

RUN apt-get install libelf-dev xz-utils gcc make flex bison bc libncurses5-dev \
    libncursesw5-dev aptitude libssl-dev pkg-config libfuse-dev libcap-dev \
    libasound2-dev libnuma-dev iproute2 jq kmod -y
RUN apt-get update
RUN apt-get install sudo parted -y

# xfstests installation
RUN sudo apt-get install acl attr automake bc dbench dump e2fsprogs fio gawk \
    indent libacl1-dev libaio-dev libcap-dev libgdbm-dev libtool \
    libtool-bin liburing-dev libuuid1 lvm2 psmisc python3 quota sed \
    uuid-dev uuid-runtime xfsprogs linux-headers-generic sqlite3 fdisk lsscsi -y

RUN sudo apt-get install exfatprogs f2fs-tools ocfs2-tools udftools xfsdump \
    xfslibs-dev -y

COPY ./xfstests/ /root/xfstests
WORKDIR /root/xfstests

RUN mkdir -p /root/linux
COPY .config /root/linux
COPY ./linux/ /root/linux

RUN chpasswd "root:root"
WORKDIR /root/

RUN dd if=/dev/zero of=ext4fs.img bs=1G count=0 seek=6
RUN mkfs.ext4 ext4fs.img
