FROM alpine:edge

RUN mkdir -p /etc/apk/repositories.d \
  && echo http://dl-cdn.alpinelinux.org/alpine/edge/testing > /etc/apk/repositories.d/testing.list

RUN apk --no-cache add \
    bash \
    bind-tools \
    curl \
    etcd-ctl \
    htop \
    iputils \
    py2-pip \
    python2 \
    tzdata \
  && pip install awscli \
  && apk del --no-cache py2-pip \
  && curl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
  && chmod +x /usr/local/bin/kubectl

CMD ["/bin/bash"]
