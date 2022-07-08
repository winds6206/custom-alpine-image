FROM alpine:3.10

MAINTAINER Tony_Jhang

RUN apk update && apk add --no-cache socat curl rsync nfs-utils busybox-extras tzdata parallel
