#! /usr/bin/env bash

PACKAGES="git tmux vim fish bash"
echo -n "Installing system packages for $1"
case $1 in
	alpine) apk add --no-cache $PACKAGES;;
	ubuntu) apt-get update && apt-get install -y $PACKAGES;;
	*) echo -n "unimplemented base tag '$1'" && exit 1;;
esac
