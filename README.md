# Docker Netbootxyz + dhcp

Docker netbootxyz and dnsmasq dhcp server.


Set environment variables and start the server. You must give netbootxyz host server IP-address in `SERVER_IP_ADDRESS` variable. 

```bash
cp .env.example .env
docker compose pull
docker compose up -d
```