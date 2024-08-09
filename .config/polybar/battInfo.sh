#!/bin/bash
#!/bin/bash

# Fetch the battery percentage using acpi or any other method
BATTERY_PERCENTAGE=$(cat /sys/class/power_supply/BAT0/capacity)
# Send a notification with the current battery percentage
notify-send "Battery at $BATTERY_PERCENTAGE%"

