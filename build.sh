#!/bin/bash
set -xeuo pipefail

# rpm fusion
dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf install -y rpmfusion-free-release-tainted rpmfusion-nonfree-release-tainted

# all codecs
dnf install -y libavcodec-freeworld 
dnf install -y --allowerasing ffmpeg

# jellyfin/kodi
dnf install -y jellyfin

systemctl enable jellyfin

# caddy
dnf copr enable -y @caddy/caddy
dnf install -y caddy

# nextcloud
# https://rhea.dev/nextcloud/
# https://fedoraproject.org/wiki/Nextcloud
dnf install -y nextcloud
