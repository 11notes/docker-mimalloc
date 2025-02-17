![Banner](https://github.com/11notes/defaults/blob/main/static/img/banner.png?raw=true)

# mimalloc
[<img src="https://img.shields.io/badge/github-source-blue?logo=github&color=040308">](https://github.com/11notes/docker-mimalloc)![size](https://img.shields.io/docker/image-size/11notes/mimalloc/2.1.9?color=0eb305)![version](https://img.shields.io/docker/v/11notes/mimalloc/2.1.9?color=eb7a09)![pulls](https://img.shields.io/docker/pulls/11notes/mimalloc?color=2b75d6)[<img src="https://img.shields.io/github/issues/11notes/docker-mimalloc?color=7842f5">](https://github.com/11notes/docker-mimalloc/issues)

**mimalloc is a compact general purpose allocator with excellent performance**

# MAIN TAGS 🏷️
These are the main tags for the image. There is also a tag for each commit and its shorthand sha256 value.

* [2.1.9](https://hub.docker.com/r/11notes/mimalloc/tags?name=2.1.9)


# SYNOPSIS 📖
**What can I do with this?** This image will provide you with one of the fastest memory allocators that currently exists. Simply add **libmimalloc.so** to your image and set **LD_PRELOAD** to it.

# BUILD 🚧
```dockerfile
FROM 11notes/mimalloc:2.1.9 as mimalloc
FROM 11notes/alpine:stable
# switch to root during setup
COPY --from=mimalloc /usr/lib/libmimalloc.so /usr/lib/
# add custom entrypoint to image
COPY ./entrypoint.sh /usr/local/bin
# start image as 1000:1000
USER docker
```

# SOURCE 💾
* [11notes/mimalloc](https://github.com/11notes/docker-mimalloc)

# PARENT IMAGE 🏛️
* [scratch](https://hub.docker.com/_/scratch)

# BUILT WITH 🧰
* [mimalloc](https://github.com/microsoft/mimalloc)

# GENERAL TIPS 📌
* Use a reverse proxy like Traefik, Nginx, HAproxy to terminate TLS and to protect your endpoints
* Use Let’s Encrypt DNS-01 challenge to obtain valid SSL certificates for your services

    
# ElevenNotes™️
This image is provided to you at your own risk. Always make backups before updating an image to a different version. Check the [releases](https://github.com/11notes/docker-mimalloc/releases) for breaking changes. If you have any problems with using this image simply raise an [issue](https://github.com/11notes/docker-mimalloc/issues), thanks. If you have a question or inputs please create a new [discussion](https://github.com/11notes/docker-mimalloc/discussions) instead of an issue. You can find all my other repositories on [github](https://github.com/11notes?tab=repositories).