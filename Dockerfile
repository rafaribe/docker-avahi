FROM alpine:3.14.3

ARG AVAHI_VERSION=0.8
ARG AVAHI_RELEASE=r5
LABEL maintainer niclas@mietz.io

LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
    org.label-schema.license="MIT" \
    org.label-schema.name="Docker Avahi" \
    org.label-schema.url="https://github.com/rafaribe/docker-avahi/" \
    org.label-schema.vcs-url="https://github.com/rafaribe/docker-avahi.git" \
    org.label-schema.vcs-type="Git"

RUN apk add --no-cache \
    avahi=$AVAHI_VERSION-$AVAHI_RELEASE \
    avahi-tools=$AVAHI_VERSION-$AVAHI_RELEASE 

ENTRYPOINT ["avahi-daemon"]