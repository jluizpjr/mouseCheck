#!/bin/bash 
# @2023 - JLuiz 
# Edit cron tab
# env EDITOR=nano crontab -e
# */15 * * * *  ~/bin/mouseCheck.sh
#
#

BATT=`/usr/sbin/ioreg -c AppleDeviceManagementHIDEventService -r -l | grep -i mouse -A 20 | grep BatteryPercent | cut -d= -f2 | cut -d' ' -f2`

# defaults to warn at 12%; accepts other number as 1st argument (useful for testing)
COMPARE=${1:-12}
MAX=100

if [ -z "$BATT" ]; then
  echo 'No Magic Mouse found.'
  exit 0 
fi

if (( BATT < COMPARE )); then
  osascript -e 'display notification "Mouse battery is low" with title "Magic Mouse Battery Low"'
fi

if (( BATT == MAX )); then
  osascript -e 'display notification "Mouse battery is full" with title "Magic Mouse Battery Full"'
fi
