FROM alpine:3.5

RUN \
  apk --no-cache add \
    bash \
    bind-tools \
    iputils \
    py-pip \
    python \
  && pip install awscli \
  && apk del --no-cache py-pip

CMD ["/bin/bash"]
