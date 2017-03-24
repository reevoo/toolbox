FROM alpine:edge

RUN mkdir -p /etc/apk/repositories.d \
  && echo http://dl-cdn.alpinelinux.org/alpine/edge/testing > /etc/apk/repositories.d/testing.list

RUN apk --no-cache add \
    awscli \
    bash \
    bind-tools \
    etcd \
    htop \
    iputils \
    tzdata

CMD ["/bin/bash"]
