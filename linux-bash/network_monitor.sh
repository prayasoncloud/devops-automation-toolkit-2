#!/bin/bash

PING_NO=4
PINGTH=200

Pinglan=$(ping -c "$PING_NO" google.com | awk -F'/' '/rtt/ {print int($5)}')
packetlossper==$(ping -c 3 google.com | awk -F ',' '/packet/ {print int($3)}')
dns_code=$(nslookup google.com >/dev/null 2>&1; echo $?)

if [ "$Pinglan" -gt "$PINGTH" ] || [ "$packetlossper" -gt 10 ] || [ "$dns_code" -ne 0 ]; then
    echo "ALERT ALERT ALERT"
    echo "latency: ${Pinglan}ms"
    echo "packet Loss: ${packetlossper}%"
    echo "DNS Resolution bro"
fi
