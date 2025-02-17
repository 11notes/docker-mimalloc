# :: Build / mimalloc
  FROM alpine/git AS build
  ARG APP_VERSION

  RUN set -ex; \
    apk add --no-cache \
      curl \
      wget \
      unzip \
      build-base \
      linux-headers \
      make \
      cmake \
      g++; \
    git clone https://github.com/microsoft/mimalloc.git -b v${APP_VERSION}; \
    cd /git/mimalloc; \
    mkdir build; \
    cd build; \
    cmake ..; \
    make -j $(nproc);

# :: Header
  FROM scratch
  COPY --from=build /git/mimalloc/build/libmimalloc.so /usr/lib/