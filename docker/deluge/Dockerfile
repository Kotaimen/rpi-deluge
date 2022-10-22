ARG DEBIAN_VERSION=bullseye
FROM debian:${DEBIAN_VERSION}
ARG DEBIAN_VERSION
ARG DELUGE_VERSION=2.1.1

EXPOSE 8112

VOLUME ["/root/.config/deluge", "/root/Downloads"]

RUN apt-get -yq update && \
    apt-get -yq install \
        python3-libtorrent \
        python3-pip \      
        python3-pillow \
        python3-twisted \
        libssl-dev \
        libtorrent-dev \
        libffi-dev \
        && \
    pip3 install --no-cache-dir deluge==${DELUGE_VERSION}

ENTRYPOINT ["deluge-web", "-d"]
