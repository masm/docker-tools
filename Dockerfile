FROM masm/archlinux
MAINTAINER Marco Monteiro <marco@neniu.org>

RUN pacman -Sq --needed --noconfirm --noprogressbar \
           aws-cli \
           bind-tools \
           inotify-tools \
           lsyncd lua51 \
           nmap \
           openssh \
           rsync \
           socat && \
    yes | pacman -Sqcc && \
    rm -rf /usr/share/man/*
