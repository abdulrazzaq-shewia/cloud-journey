#!/bin/bash
THRESHOLD=80
USAGE=$(df / --output=pcent | tail -1 | tr -d ' %')

echo "Disk usage: $USAGE% (alert at $THRESHOLD%)"

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "🚨 ALERT: disk usage is above $THRESHOLD%!"
else
    echo "✅ OK: disk usage is normal."
fi
