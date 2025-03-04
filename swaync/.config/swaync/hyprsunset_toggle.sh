#!/bin/sh

# Check if hyprsunset is running using pgrep
pid=$(pgrep -x hyprsunset)

if [ -z "$pid" ]; then
  # If not running, start hyprsunset with the specified temperature
  hyprsunset -t 5700 &
  notify-send "hyprsunset started with temperature 5700"
else
  # If running, kill hyprsunset
  kill "$pid"
  wait "$pid" 2>/dev/null || true # Wait for the process to terminate, ignoring errors
  sleep 0.1 # Add a short delay to ensure the process is fully terminated
  notify-send "hyprsunset stopped"
fi