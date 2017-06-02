FROM alpine:3.4

RUN echo http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories \
    && echo http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories \
    && apk update \
    && apk upgrade \
    && apk add neovim \
    && rm -rf /var/cache/apk/* \
;

ADD . /root

CMD [ "nvim" ]
