FROM alpine:3.11

RUN apk update && apk add --no-cache ca-certificates && apk add --upgrade curl
RUN curl -L https://getenvoy.io/cli  >/usr/local/bin/envoy #| bash -s -- -b /usr/local/bin
RUN chgrp root /usr/local/bin/envoy && chmod 550 /usr/local/bin/envoy

