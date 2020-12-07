FROM alpine:latest 
RUN apk-update && apk-add --upgrade wget 
ENV ENVOY_VERSION 1.16.1
WORKDIR /envoy
RUN "https://github.com/envoyproxy/envoy/archive/v${ENVOY_VERSION{.tar.gz"
#RUN rm -rf /etc/envoy
