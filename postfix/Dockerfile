FROM alpine:latest

RUN apk add --no-cache \
        bash \
        ca-certificates \
        cyrus-sasl-dev \
        postfix \
        --repository http://dl-cdn.alpinelinux.org/alpine/edge/main

CMD ["/usr/sbin/postfix", "start-fg"]