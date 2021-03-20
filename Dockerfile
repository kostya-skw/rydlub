FROM alpine

RUN apk update && apk add ca-certificates && \
    wget https://github.com/mikefarah/yq/releases/download/v4.6.2/yq_linux_amd64 -O /usr/bin/yq && chmod +x /usr/bin/yq && \
    wget https://api.github.com/repos/torvalds/linux/commits -O /tmp/json &&
CMD ["yq", "eval", "-P", "/tmp/json"]
