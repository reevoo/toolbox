FROM alpine:3.7

RUN apk --no-cache add \
    bash \
    bind-tools \
    curl \
    htop \
    iputils \
    py2-pip \
    tzdata

RUN apk --no-cache add python2 py2-pip \
  && pip install awscli \
  && apk del py2-pip

RUN curl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
  && chmod +x /usr/local/bin/kubectl

RUN apk --no-cache add tar \
  && curl -sL $(curl -s https://api.github.com/repos/coreos/etcd/releases/latest | awk -F '"' '/browser_download_url.*linux-amd64.tar.gz"$/{ print $4 }') | tar xzv --strip-components=1 --wildcards -C /usr/local/bin/ "*/etcdctl" \
  && chmod +x /usr/local/bin/etcdctl \
  && apk del tar

CMD ["/bin/bash"]
