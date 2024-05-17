FROM alpine:latest
MAINTAINER Alexander Aust mail@alexander-aust.de

RUN apk add --no-cache \
        bash \
        ca-certificates \
        cyrus-sasl-dev \
        postfix \
        opendkim \
        postfix-pgsql \
        --repository http://dl-cdn.alpinelinux.org/alpine/edge/main

COPY run.sh /
RUN chmod +x /run.sh

CMD ["/run.sh"]
