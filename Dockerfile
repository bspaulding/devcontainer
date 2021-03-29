FROM alpine:3.13.3

RUN apk add --no-cache git tmux vim fish bash

WORKDIR /root

RUN git clone --recurse-submodules https://github.com/bspaulding/.vim.git $HOME/.vim
RUN sh $HOME/.vim/install

RUN git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
COPY tmux.conf .tmux.conf

ENTRYPOINT ["/usr/bin/fish"]
