ARG DEBIAN_VERSION=bookworm
FROM public.ecr.aws/docker/library/debian:${DEBIAN_VERSION}
ARG DEBIAN_VERSION
ARG DELUGE_VERSION=2.2.0

EXPOSE 8112

VOLUME ["/root/.config/deluge", "/root/Downloads"]

RUN apt-get -yq update && \
    apt-get -yq install \
        pipx python3-dev gcc \
        libtorrent-dev \
        && \
    pipx install --verbose deluge==${DELUGE_VERSION}

ENTRYPOINT ["/root/.local/bin/deluge-web", "-d"]
