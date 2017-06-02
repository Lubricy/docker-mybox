FROM alpine:3.4

ENV USER lubricy

RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories \
    && echo http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories \
    && apk update \
    && apk upgrade \
    && apk add ncurses perl tmux git zsh\
    && rm -rf /var/cache/apk/* \
;



RUN adduser -S -s /bin/zsh $USER
WORKDIR /home/$USER
ADD . .
RUN chown -R $USER .

USER $USER


CMD [ "tmux" ]
