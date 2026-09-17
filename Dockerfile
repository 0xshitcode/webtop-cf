FROM linuxserver/webtop:ubuntu-xfce
RUN apt-get update && apt-get install -y wget ca-certificates \
 && wget -q https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -O /usr/local/bin/cloudflared \
 && chmod +x /usr/local/bin/cloudflared && rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
