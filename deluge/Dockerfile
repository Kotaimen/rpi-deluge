ARG DEBIAN_VERSION=buster
FROM debian:${DEBIAN_VERSION}
ARG DEBIAN_VERSION
ARG DELUGE_VERSION=2.0.3

EXPOSE 8112

VOLUME ["/root/.config/deluge", "/root/Downloads"]

# make build in China faster...

# RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak &&\
#     echo "deb http://mirrors.aliyun.com/debian/ ${DEBIAN_VERSION} main non-free contrib\n\
# deb http://mirrors.aliyun.com/debian/ ${DEBIAN_VERSION}-updates main non-free contrib\n\
# deb http://mirrors.aliyun.com/debian/ ${DEBIAN_VERSION}-backports main non-free contrib\n\
# deb-src http://mirrors.aliyun.com/debian/ ${DEBIAN_VERSION} main non-free contrib\n\
# deb-src http://mirrors.aliyun.com/debian/ ${DEBIAN_VERSION}-updates main non-free contrib\n\
# deb-src http://mirrors.aliyun.com/debian/ ${DEBIAN_VERSION}-backports main non-free contrib\n\
# deb http://mirrors.aliyun.com/debian-security/ ${DEBIAN_VERSION}/updates main non-free contrib\n\
# deb-src http://mirrors.aliyun.com/debian-security/ ${DEBIAN_VERSION}/updates main non-free contrib\n\
# " > /etc/apt/sources.list &&\
#     cat /etc/apt/sources.list.bak >> /etc/apt/sources.list

RUN apt-get -yq update && \
    apt-get -yq install \
        python3-libtorrent \
        python3-pip \      
        python3-pillow \
        libssl-dev \
        libtorrent-dev \
        libffi-dev \
        && \
    pip3 install --no-cache-dir deluge==${DELUGE_VERSION}

ENTRYPOINT ["deluge-web", "-d"]
