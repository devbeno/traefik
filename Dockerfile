FROM traefik:v2.4.8
RUN apk -u add openssh
COPY ./ssh_config /etc/ssh/ssh_config
RUN mkdir -p /root/.ssh
COPY ./entrypoint.sh /entrypoint.sh
