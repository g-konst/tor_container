FROM alpine:3.13.2

RUN apk add --no-cache tor=0.4.4.7-r1 \
 && echo "SocksPort 0.0.0.0:9050" >> /etc/tor/torrc \
 && chown -R tor /etc/tor

USER tor
EXPOSE 9050

ENTRYPOINT ["tor"]
CMD ["-f", "/etc/tor/torrc"]
