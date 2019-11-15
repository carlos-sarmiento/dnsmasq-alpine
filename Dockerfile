FROM alpine:edge
RUN apk --no-cache add dnsmasq
EXPOSE 53 53/udp
EXPOSE 67 67/udp
ENTRYPOINT ["dnsmasq", "-k", "-K", "--conf-dir=/config,*.conf", "--log-facility=-"]
