#!/bin/sh

set -e

SCRIPT="script"
TIMING="$SCRIPT.timing"
LC_ALL=en_US.UTF-8

asciinema rec -c "scriptreplay -t $TIMING $SCRIPT"  
