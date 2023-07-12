FROM registry.gitlab.com/tozd/docker/base:alpine-310

RUN apk add --no-cache runit tzdata && \
  wget -O /dinit https://gitlab.com/tozd/dinit/-/releases/v0.2.0/downloads/linux-amd64/dinit && \
  chmod +x /dinit && \
  wget -O /usr/local/bin/regex2json https://gitlab.com/tozd/regex2json/-/releases/v0.6.0/downloads/linux-amd64/regex2json && \
  chmod +x /usr/local/bin/regex2json

ENTRYPOINT ["/dinit"]
