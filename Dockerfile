FROM alpine:3.11

RUN apk update && apk add --no-cache ca-certificates
RUN curl -L https://getenvoy.io/cli  >/usr/local/bin/envoy #| bash -s -- -b /usr/local/bin
