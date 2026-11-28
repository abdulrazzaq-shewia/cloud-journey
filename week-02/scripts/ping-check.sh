#!/bin/bash
HOSTS="google.com github.com aws.amazon.com fake-site-12345.com"

for HOST in $HOSTS; do
    if ping -c 1 -W 2 "$HOST" > /dev/null 2>&1; then
        echo "🟢 $HOST is UP"
    else
        echo "🔴 $HOST is DOWN"
    fi
done
