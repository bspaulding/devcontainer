#! /usr/bin/env bash

echo -n "Installing system packages for $1"
case $1 in
	alpine) apk add --no-cache git tmux vim fish bash;;
	ubuntu) apt-get update && apt-get install -y git tmux vim fish bash;;
	*) echo -n "unimplemented base tag '$1'" && exit 1;;
esac
