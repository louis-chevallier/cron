#!/usr/bin/bash
# https://yunli.nl/blogs/2020-08-17_waking_up_with_rtcwake_and_crontab/
echo ${HOME}
source ${HOME}/.bashrc
spy
date
pwd
env666
cd ~/dev/git/cron
date
which python
spy
#sleep 20
# s'endormir et se réveiller à 3h55 demain

#rtcwake -m mem -t $(date +\%s -d "tomorrow 03:55")
#sudo rtcwake -m no -t $(date +\%s -d "tomorrow 03:55")

date; echo "going to sleep"
my_suspend









