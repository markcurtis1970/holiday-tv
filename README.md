# Holiday TV

A simple set of scripts for using the raspberry pi to schedule unattended movies to play on a TV. Useful if you're away on holidays etc to deter any burgalars.

The hardware used was a raspberry pi and a set of these: https://energenie4u.co.uk/index.phpcatalogue/product/ENER002-2PI 

I used two one for the TV power and one for a light. However you can change the scripts to suit what you need.

The power to the TV is switched on and then the TV switched on via the HDMI connection. Once this is done a movie can be played for a predetermined amount of time. The TV is powered off afterwards to save energy.

## Setup

You'll need to ensure the following packages are installed

- cec-utils

## Scripts / Files

Its all cron controlled so see the example crontab file that triggers the scripts.

- `tv.sh` this controls the triggering of the TV on / off and calls the script to power the sockets on / off
- `switch.py` this is the script which controls the wirless power socket controller board.
- `crontab.txt` example crontab statements I used, copy / use as required
