FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y curl gcc kmod make \
    && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

CMD /entrypoint.sh
