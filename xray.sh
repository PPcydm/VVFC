#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a89f0595-5e93-4d76-9b8d-0f2abf412236"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

