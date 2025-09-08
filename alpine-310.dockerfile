FROM registry.gitlab.com/tozd/docker/base:alpine-310

ARG TARGETARCH

RUN apk add --no-cache runit tzdata && \
  wget -O /dinit https://gitlab.com/tozd/dinit/-/releases/v0.4.0/downloads/linux-${TARGETARCH:-amd64}/dinit && \
  chmod +x /dinit && \
  wget -O /usr/local/bin/regex2json https://gitlab.com/tozd/regex2json/-/releases/v0.12.0/downloads/linux-${TARGETARCH:-amd64}/regex2json && \
  chmod +x /usr/local/bin/regex2json

ENTRYPOINT ["/dinit"]
