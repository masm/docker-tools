FROM masm/archlinux
MAINTAINER Marco Monteiro <marco@neniu.org>

RUN pacman -Sq --needed --noconfirm --noprogressbar \
           aws-cli \
           bind-tools \
           bdsync \
           etcdtool \
           groff \
           inotify-tools \
           iproute2 \
           lsyncd \
           lua51 \
           nmap \
           openssh \
           rsync \
           socat \
           sudo \
           wget && \
    yes | pacman -Sqcc && \
    rm -rf /usr/share/man/*
