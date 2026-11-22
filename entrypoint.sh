#!/bin/sh
set -e
PORT="${PORT:-8080}"
UUID="${UUID:-00000000-0000-0000-0000-000000000000}"
WS_PATH="${WS_PATH:-/vless}"
sed -e "s|__UUID__|${UUID}|g" -e "s|__PORT__|${PORT}|g" -e "s|__PATH__|${WS_PATH}|g" \
    /etc/xray/config.template.json > /etc/xray/config.json
echo "[rwvless] starting xray on port ${PORT} path ${WS_PATH}"
exec /usr/local/bin/xray run -c /etc/xray/config.json
