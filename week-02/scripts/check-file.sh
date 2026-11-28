#!/bin/bash
FILE=$1
if [ -f "$FILE" ]; then
    echo "✅ $FILE exists"
else
    echo "❌ $FILE not found"
fi
