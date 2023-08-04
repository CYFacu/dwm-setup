#!/bin/sh

SINK=$(pactl get-default-sink)
VOLUME=$(pactl get-sink-volume $SINK | grep -oP '\d+%' | head -1 | grep -oP '\d+')

if (($VOLUME == 0)); then
  echo " "
elif (($VOLUME > 0)) && (($VOLUME < 40)); then
  echo ""
elif (($VOLUME >= 40)) && (($VOLUME < 60)); then
  echo ""
elif (($VOLUME >= 60)) && (($VOLUME < 80)); then
  echo ""
elif (($VOLUME >= 80)) && (($VOLUME < 100)); then
  echo ""
else
  echo ""
fi
