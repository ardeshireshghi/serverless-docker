FROM mhart/alpine-node
MAINTAINER Ardeshir Eshghi

# Install aws dependencies
RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates curl groff less && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*

RUN \
  npm install -g serverless
