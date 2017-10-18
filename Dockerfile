FROM alpine:3.6
ENTRYPOINT ["sh", "-c", "ping $ADDR"]
