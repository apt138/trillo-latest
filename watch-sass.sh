#!/bin/sh

# Check if the interval argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <interval-in-seconds>"
  exit 1
fi

INTERVAL=$1

while true; do
    echo "compiling sass at $(date)"
    npx sass sass/main.scss css/style.css
    echo "sleeping for $INTERVAL seconds"
    sleep $INTERVAL
done