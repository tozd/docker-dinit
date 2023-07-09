# tozd/dinit

<https://gitlab.com/tozd/docker/dinit>

Available as:

- [`tozd/dinit`](https://hub.docker.com/r/tozd/dinit)
- [`registry.gitlab.com/tozd/docker/dinit`](https://gitlab.com/tozd/docker/dinit/container_registry)

## Image inheritance

[`tozd/base`](https://gitlab.com/tozd/docker/base) ← `tozd/dinit`

## Tags

- `ubuntu-trusty`: dinit 0.1.0
- `ubuntu-xenial`: dinit 0.1.0
- `ubuntu-bionic`: dinit 0.1.0
- `ubuntu-focal`: dinit 0.1.0
- `ubuntu-jammy`: dinit 0.1.0
- `alpine-38`: dinit 0.1.0
- `alpine-310`: dinit 0.1.0
- `alpine-312`: dinit 0.1.0
- `alpine-314`: dinit 0.1.0
- `alpine-316`: dinit 0.1.0

## Description

An image using [dinit](https://gitlab.com/tozd/dinit) for service supervision.

It includes also [regex2json](https://gitlab.com/tozd/regex2json) binary to make it
easier to transform non-JSON output to JSON. It has also [runit](http://smarden.org/runit/)
binaries installed (e.g., you can use `svlogd` to store service's stdout into a log file
and rotate it).

It can serve as a good base image for other Docker images.

It sets Docker image entrypoint so dinit is run automatically.

In short, to create a service create `/etc/service/<name>/run` script which at the end
`exec`s into the service executable you want to run (and supervise to keep running).

All images are rebuild daily to get any latest (security) updates from
the underlying distribution.
If you do the same in your image (which extends any of these images), you will
get those updates as well.

## GitHub mirror

There is also a [read-only GitHub mirror available](https://github.com/tozd/docker-dinit),
if you need to fork the project there.
