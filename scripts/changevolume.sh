#!/bin/sh

# Argument 1 is the volume
SINK=$(pactl get-default-sink)
VOLUME="+5%"
if [ "$1" = "down" ]; then
  VOLUME="-5%"
fi

pactl set-sink-volume $SINK $VOLUME
