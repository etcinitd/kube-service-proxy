FROM debian:jessie

RUN apt-get update && \
    apt-get install -y socat && \
    rm -rf /var/lib/apt/lists/*

COPY start.sh /start.sh

USER 1001

ENTRYPOINT ["/start.sh"]
CMD ["kubernetes"]
