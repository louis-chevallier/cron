#!/usr/bin/bash
# will be executed after reboot bu sudo

#echo "on reboot" $(date) >> trace.trc

# required by rtcwake when run without sudo
sudo chmod ugo+r /dev/rtc0
sudo chmod ugo+rw /sys/power/state

