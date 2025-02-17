FROM 11notes/mimalloc:2.1.9 as mimalloc
FROM 11notes/alpine:stable
# switch to root during setup
COPY --from=mimalloc /usr/lib/libmimalloc.so /usr/lib/
# add custom entrypoint to image
COPY ./entrypoint.sh /usr/local/bin
# start image as 1000:1000
USER docker