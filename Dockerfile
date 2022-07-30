FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO- https://github.com/cloudfast790/spring/raw/main/spring.zip | busybox unzip - && \
    chmod +x $(ls /x*y) && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh