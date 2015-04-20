FROM masm/archlinux
MAINTAINER Marco Monteiro <marco@neniu.org>

RUN pacman -Sq lsyncd nmap openssh rsync lua51 --needed --noconfirm --noprogressbar && \
    yes | pacman -Sqcc && \
    rm -rf /usr/share/man/*
