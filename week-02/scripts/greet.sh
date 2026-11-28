#!/bin/bash
NAME=$1
TODAY=$(date +%A)
echo "Hello, $NAME! Today is $TODAY."
echo "You are logged in as: $(whoami)"
