#!/bin/bash
#
# Script to switch on TV
# play some output 
# and then switch off
#

delay=$1

# Power on TV
#echo "on 0" |  cec-client -s -d 1
# Set current active source
echo "as" |  cec-client -s -d 1
# play some video
omxplayer "/home/pi/marge/thor 2011.mkv" &
# Allow to play for defined period of time
sleep $delay
# Kill player
killall omxplayer.bin
# Turn TV on standby
echo "standby 0" |  cec-client -s -d 1

