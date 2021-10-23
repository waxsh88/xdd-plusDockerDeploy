FROM golang:alpine

COPY ./docker-entrypoint.sh /bin/

RUN chmod a+x /bin/docker-entrypoint.sh \
    && apk add git \
    && apk add gcc

ENTRYPOINT ["/bin/docker-entrypoint.sh"]

WORKDIR /xdd-plus
