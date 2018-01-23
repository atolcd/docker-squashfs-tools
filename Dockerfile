FROM alpine:3.7

MAINTAINER Guillaume Poittevin <gpo@atolcd.com>

RUN apk update 
RUN apk add --update squashfs-tools && rm -rf /var/cache/apk/*

ENTRYPOINT [ "mksquashfs" ]