FROM debian:jessie

MAINTAINER Jon Brouse dockerhub|github|twitter @jonbrouse

RUN apt-get update && \
    apt-get install -y openvpn curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 1194

ENTRYPOINT [ "openvpn" ]

CMD []
