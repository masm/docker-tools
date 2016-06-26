FROM masm/archlinux
MAINTAINER Marco Monteiro <marco@neniu.org>

RUN pacman -Sq --needed --noconfirm --noprogressbar \
           aws-cli \
           bind-tools \
           bdsync \
           groff \
           inotify-tools \
           lsyncd lua51 \
           nmap \
           openssh \
           rsync \
           socat \
           sudo \
           wget && \
    yes | pacman -Sqcc && \
    rm -rf /usr/share/man/*
RUN pacman -Sq --needed --noconfirm --noprogressbar etcdtool