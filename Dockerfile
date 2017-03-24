FROM alpine:edge

RUN mkdir -p /etc/apk/repositories.d \
  && echo http://dl-cdn.alpinelinux.org/alpine/edge/testing > /etc/apk/repositories.d/testing.list

RUN apk --no-cache add \
    bash \
    bind-tools \
    etcd \
    htop \
    iputils \
    py2-pip \
    python2 \
    tzdata \
  && pip install awscli \
  && apk del --no-cache py2-pip

CMD ["/bin/bash"]
