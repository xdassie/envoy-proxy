FROM alpine:3.11

RUN apk update && apk add --no-cache ca-certificates && apk add --upgrade curl bash
RUN curl -L https://getenvoy.io/cli | bash -s -- -b /usr/local/bin
RUN ls -lt /usr/local/bin | head
RUN getenvoy run standard:1.12.2 -- --version
RUN chgrp root /usr/local/bin/envoy && chmod 550 /usr/local/bin/envoy


