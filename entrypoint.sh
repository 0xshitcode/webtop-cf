#!/bin/sh
/usr/local/bin/cloudflared tunnel --url http://localhost:3000 > /tmp/cf.log 2>&1 &
tail -F /tmp/cf.log 2>/dev/null &
exec /init
