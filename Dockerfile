FROM alpine:3.13.3

RUN apk add --no-cache git tmux vim fish bash

WORKDIR /root

RUN git clone https://github.com/bspaulding/dotfiles.git $HOME/dotfiles
RUN cd $HOME/dotfiles && sh install

ENTRYPOINT ["/usr/bin/fish"]
