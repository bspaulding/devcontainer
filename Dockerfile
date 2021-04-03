ARG base=alpine
FROM $base
ARG base

WORKDIR /root

COPY system-packages.sh system-packages.sh
RUN sh system-packages.sh
RUN rm system-packages.sh

RUN git clone https://github.com/bspaulding/dotfiles.git $HOME/dotfiles
RUN cd $HOME/dotfiles && sh install

ENTRYPOINT ["/usr/bin/fish"]
