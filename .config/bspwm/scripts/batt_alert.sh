#! /bin/sh
CAPACITY=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)

if [ "$CAPACITY" -lt 15 -a ${STATUS^^} == "DISCHARGING"  ]; then
	$(notify-send -u critical "LOWER BATTERY $CAPACITY%" )
elif [ "$CAPACITY" -eq 100 -a ${STATUS^^} == "CHARGING" ];then
	$(notify-send -u normal "FULL CHARGED BATTERY $CAPACITY%") 
fi

echo "STATUS 0"
