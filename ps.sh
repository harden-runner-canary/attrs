#!/bin/bash

# Interval in seconds between each ps output
INTERVAL=1

echo "Starting ps monitor. Press [CTRL+C] to stop."

while true
do
  echo "Timestamp: $(date)"
  ps aux | tee -a out.txt
  echo "----------------------------------------"
  sleep $INTERVAL
done

