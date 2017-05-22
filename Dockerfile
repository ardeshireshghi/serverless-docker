FROM mhart/alpine-node:6.10
MAINTAINER Ardeshir Eshghi

# Install git and openssh
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

# Install build tools
RUN apk add --no-cache make gcc g++

# Install aws dependencies
RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates curl groff less && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*


RUN \
  npm install -g serverless
