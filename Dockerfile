FROM alpine:3.13.2
LABEL org.opencontainers.image.source https://github.com/g-konst/tor_container

RUN apk add --no-cache tor \
 && echo "SocksPort 0.0.0.0:9050" >> /etc/tor/torrc \
 && chown -R tor /etc/tor

USER tor
EXPOSE 9050

ENTRYPOINT ["tor"]
CMD ["-f", "/etc/tor/torrc"]
