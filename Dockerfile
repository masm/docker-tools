FROM masm/archlinux
MAINTAINER Marco Monteiro <marco@neniu.org>

RUN pacman -Sq --needed --noconfirm --noprogressbar \
           aws-cli \
           bind-tools \
           bdsync \
           inotify-tools \
           lsyncd lua51 \
           nmap \
           openssh \
           rsync \
           socat \
           sudo && \
    yes | pacman -Sqcc && \
    rm -rf /usr/share/man/*
