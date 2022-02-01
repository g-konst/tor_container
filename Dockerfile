FROM alpine:3.13.2

RUN apk add --no-cache tor \
 && echo -e "SocksPort 0.0.0.0:9050\nHTTPTunnelPort 0.0.0.0:9080" >> /etc/tor/torrc \
 && chown -R tor /etc/tor

USER tor
EXPOSE 9050

ENTRYPOINT ["tor"]
CMD ["-f", "/etc/tor/torrc"]
