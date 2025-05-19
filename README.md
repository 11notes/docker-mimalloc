![banner](https://github.com/11notes/defaults/blob/main/static/img/banner.png?raw=true)

# MIMALLOC
[<img src="https://img.shields.io/badge/github-source-blue?logo=github&color=040308">](https://github.com/11notes/docker-MIMALLOC)![5px](https://github.com/11notes/defaults/blob/main/static/img/transparent5x2px.png?raw=true)![size](https://img.shields.io/docker/image-size/11notes/mimalloc/2.2.2?color=0eb305)![5px](https://github.com/11notes/defaults/blob/main/static/img/transparent5x2px.png?raw=true)![version](https://img.shields.io/docker/v/11notes/mimalloc/2.2.2?color=eb7a09)![5px](https://github.com/11notes/defaults/blob/main/static/img/transparent5x2px.png?raw=true)![pulls](https://img.shields.io/docker/pulls/11notes/mimalloc?color=2b75d6)![5px](https://github.com/11notes/defaults/blob/main/static/img/transparent5x2px.png?raw=true)[<img src="https://img.shields.io/github/issues/11notes/docker-MIMALLOC?color=7842f5">](https://github.com/11notes/docker-MIMALLOC/issues)![5px](https://github.com/11notes/defaults/blob/main/static/img/transparent5x2px.png?raw=true)![swiss_made](https://img.shields.io/badge/Swiss_Made-FFFFFF?labelColor=FF0000&logo=data:image/svg%2bxml;base64,PHN2ZyB2ZXJzaW9uPSIxIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgdmlld0JveD0iMCAwIDMyIDMyIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGQ9Im0wIDBoMzJ2MzJoLTMyeiIgZmlsbD0iI2YwMCIvPjxwYXRoIGQ9Im0xMyA2aDZ2N2g3djZoLTd2N2gtNnYtN2gtN3YtNmg3eiIgZmlsbD0iI2ZmZiIvPjwvc3ZnPg==)

mimalloc is a compact general purpose allocator with excellent performance

# SYNOPSIS 📖
**What can I do with this?** This image will provide you with one of the fastest memory allocators that currently exists. Simply add **libmimalloc.so** to your image and set **LD_PRELOAD** to it.

# BUILD 🚧
```yaml
FROM 11notes/mimalloc:2.1.9 as mimalloc

FROM 11notes/alpine:stable
COPY --from=mimalloc /usr/lib/libmimalloc.so /usr/lib/
# switch to root during setup
USER root
# setup your app
RUN set -ex; \
  setup your app
# add custom entrypoint to image
COPY ./entrypoint.sh /usr/local/bin
# start image as 1000:1000
USER docker
```

# DEFAULT SETTINGS 🗃️
| Parameter | Value | Description |
| --- | --- | --- |
| `user` | docker | user name |
| `uid` | 1000 | [user identifier](https://en.wikipedia.org/wiki/User_identifier) |
| `gid` | 1000 | [group identifier](https://en.wikipedia.org/wiki/Group_identifier) |
| `home` | / | home directory of user docker |

# ENVIRONMENT 📝
| Parameter | Value | Default |
| --- | --- | --- |
| `TZ` | [Time Zone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) | |
| `DEBUG` | Will activate debug option for container image and app (if available) | |

# MAIN TAGS 🏷️
These are the main tags for the image. There is also a tag for each commit and its shorthand sha256 value.

* [2.2.2](https://hub.docker.com/r/11notes/mimalloc/tags?name=2.2.2)

### There is no latest tag, what am I supposed to do about updates?
It is of my opinion that the ```:latest``` tag is super dangerous. Many times, I’ve introduced **breaking** changes to my images. This would have messed up everything for some people. If you don’t want to change the tag to the latest [semver](https://semver.org/), simply use the short versions of [semver](https://semver.org/). Instead of using ```:2.2.2``` you can use ```:2``` or ```:2.2```. Since on each new version these tags are updated to the latest version of the software, using them is identical to using ```:latest``` but at least fixed to a major or minor version.

If you still insist on having the bleeding edge release of this app, simply use the ```:rolling``` tag, but be warned! You will get the latest version of the app instantly, regardless of breaking changes or security issues or what so ever. You do this at your own risk!

# REGISTRIES ☁️
```
docker pull 11notes/mimalloc:2.2.2
docker pull ghcr.io/11notes/mimalloc:2.2.2
docker pull quay.io/11notes/mimalloc:2.2.2
```

# SOURCE 💾
* [11notes/mimalloc](https://github.com/11notes/docker-MIMALLOC)

# PARENT IMAGE 🏛️
* [scratch](https://hub.docker.com/_/scratch)

# BUILT WITH 🧰
* [mimalloc](https://github.com/microsoft/mimalloc)
* [11notes/util](https://github.com/11notes/docker-util)

# GENERAL TIPS 📌
> [!TIP]
>* Use a reverse proxy like Traefik, Nginx, HAproxy to terminate TLS and to protect your endpoints
>* Use Let’s Encrypt DNS-01 challenge to obtain valid SSL certificates for your services

# ElevenNotes™️
This image is provided to you at your own risk. Always make backups before updating an image to a different version. Check the [releases](https://github.com/11notes/docker-mimalloc/releases) for breaking changes. If you have any problems with using this image simply raise an [issue](https://github.com/11notes/docker-mimalloc/issues), thanks. If you have a question or inputs please create a new [discussion](https://github.com/11notes/docker-mimalloc/discussions) instead of an issue. You can find all my other repositories on [github](https://github.com/11notes?tab=repositories).

*created 19.05.2025, 13:55:33 (CET)*