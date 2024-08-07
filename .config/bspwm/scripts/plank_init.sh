#! /bin/bash
killall plank
# Wait for bspwm to initialize
sleep 1

# Start Plank and ensure it has no borders
plank &

