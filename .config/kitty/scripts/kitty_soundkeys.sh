#!/bin/bash

# Function to handle key press events
function on_key_press {
    echo "hello"
}

# Listen for key press events and call the function
kitty @ kitten icat --stdin no --clear no --scale-up yes --transfer-mode file --listen

# Trap SIGUSR1 signal to call the function
trap 'on_key_press' SIGUSR1

# Keep the script running to listen for events
while true; do
    sleep 1
done

