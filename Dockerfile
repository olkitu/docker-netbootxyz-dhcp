FROM alpine:3

ENV DHCP_RANGE_START=192.168.1.100 \
    DHCP_RANGE_END=192.168.1.200 \
    DHCP_SUBNET_MASK=255.255.255.0 \
    DHCP_LEASE_TIME=1h \
    DHCP_OPTION_ROUTER=192.168.1.1 \
    DHCP_DNS_1=1.1.1.1 \
    DHCP_DNS_2=1.0.0.1 \
    SERVER_IP_ADDRESS=


RUN apk add --no-cache dnsmasq gettext

COPY dnsmasq/dnsmasq.conf.template /etc/dnsmasq.conf.template
COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

EXPOSE 67/udp
EXPOSE 68/udp

ENTRYPOINT ["/docker-entrypoint.sh"]
