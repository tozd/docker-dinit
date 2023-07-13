FROM registry.gitlab.com/tozd/docker/base:ubuntu-bionic

RUN apt-get update -q -q && \
  apt-get install --yes --force-yes runit wget ca-certificates && \
  wget -O /dinit https://gitlab.com/tozd/dinit/-/releases/v0.2.0/downloads/linux-amd64/dinit && \
  chmod +x /dinit && \
  wget -O /usr/local/bin/regex2json https://gitlab.com/tozd/regex2json/-/releases/v0.9.0/downloads/linux-amd64/regex2json && \
  chmod +x /usr/local/bin/regex2json && \
  apt-get purge --yes --force-yes --auto-remove wget ca-certificates && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.cache ~/.npm

ENTRYPOINT ["/dinit"]
