FROM registry.gitlab.com/tozd/docker/base:alpine-320

ARG TARGETARCH=amd64

RUN apk add --no-cache runit tzdata && \
  wget -O /dinit https://gitlab.com/tozd/dinit/-/releases/v0.3.0/downloads/linux-${TARGETARCH}/dinit && \
  chmod +x /dinit && \
  wget -O /usr/local/bin/regex2json https://gitlab.com/tozd/regex2json/-/releases/v0.11.0/downloads/linux-${TARGETARCH}/regex2json && \
  chmod +x /usr/local/bin/regex2json

ENTRYPOINT ["/dinit"]
