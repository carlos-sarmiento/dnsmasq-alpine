FROM alpine:edge
RUN echo nameserver 10.1.0.10 > /etc/resolve.conf && apk --no-cache add dnsmasq
EXPOSE 53 53/udp
EXPOSE 67 67/udp
ENTRYPOINT ["dnsmasq", "-d", "--conf-dir=/config,*.conf"]
