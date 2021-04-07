# devcontainer

Building a devcontainer base with my dotfiles. vim/tmux/git, etc.

The root `Dockerfile` specifies how to add in my dev env given a base image. 

The github action build matrix is where the various base images I'd like to build are specified.

Sometimes, it may be necessary to build a custom base image where no suitable one exists yet. In these cases, those dockerfiles live in `base-images/<image-name>/Dockerfile`. The build script `build-base-images.sh` iterates all these directories and builds them. To add a new base image, simply add a new Dockerfile at the desired location.
