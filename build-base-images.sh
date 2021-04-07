#! /usr/bin/env bash

for f in ./base-images/*; do
	echo "building $(basename $f)"
	docker build $f -t $1bspaulding-dev-base-$(basename $f):latest
	docker push $1bspaulding-dev-base-$(basename $f):latest
done
