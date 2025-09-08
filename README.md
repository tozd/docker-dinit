# tozd/dinit

<https://gitlab.com/tozd/docker/dinit>

Available as:

- [`tozd/dinit`](https://hub.docker.com/r/tozd/dinit)
- [`registry.gitlab.com/tozd/docker/dinit`](https://gitlab.com/tozd/docker/dinit/container_registry)

## Image inheritance

[`tozd/base`](https://gitlab.com/tozd/docker/base) ← `tozd/dinit`

## Tags

- `ubuntu-trusty`: dinit 0.4.0
- `ubuntu-xenial`: dinit 0.4.0
- `ubuntu-bionic`: dinit 0.4.0
- `ubuntu-focal`: dinit 0.4.0
- `ubuntu-jammy`: dinit 0.4.0
- `ubuntu-noble`: dinit 0.4.0
- `alpine-38`: dinit 0.4.0
- `alpine-310`: dinit 0.4.0
- `alpine-312`: dinit 0.4.0
- `alpine-314`: dinit 0.4.0
- `alpine-316`: dinit 0.4.0
- `alpine-318`: dinit 0.4.0
- `alpine-320`: dinit 0.4.0
- `alpine-322`: dinit 0.4.0

## Architectures

- `amd64`
- `arm64`

## Description

An image using [dinit](https://gitlab.com/tozd/dinit) for service supervision.

It includes also [regex2json](https://gitlab.com/tozd/regex2json) binary to make it
easier to transform non-JSON output to JSON. It has also [runit](http://smarden.org/runit/)
binaries installed (e.g., you can use `svlogd` to store service's stdout into a log file
and rotate it).

It can serve as a good base image for other Docker images.

It sets Docker image entrypoint so dinit is run automatically.

By default dinit expects that all programs/services it manages output to their stdout
logging in JSON while stderr can be unstructured. dinit then multiplexes output from
all programs/services to container's stdout and stderr. dinit outputs own
errors to container's stderr, too. In Docker, by default, container's stdout and
stderr are retrievable using `docker logs`.

In short, to create a service create `/etc/service/<name>/run` script which at the end
`exec`s into the service executable you want to run (and supervise to keep running).

## GitHub mirror

There is also a [read-only GitHub mirror available](https://github.com/tozd/docker-dinit),
if you need to fork the project there.
