#!/bin/sh

SCRIPT="script"
TIMING="$SCRIPT.timing"

if [ -e $SCRIPT -o -e $TIMING ]; then
    echo "Please remove or rename $SCRIPT and $TIMING before continuing." >&2
    exit 1
fi

script -c "screen -xR" -t${TIMING} $SCRIPT
