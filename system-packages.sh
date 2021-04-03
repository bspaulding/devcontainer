#! /usr/bin/env bash

PACKAGES="git tmux vim fish bash"
echo -n "Installing system packages..."
if [ -x $(which apk) ]; then
	apk add --no-cache $PACKAGES
elif [ -x $(which apt-get) ]; then
	apt-get update && apt-get install -y $PACKAGES
else
	echo -n "error: couldn't find an implemented package manager!" && exit 1
fi
