#!/usr/bin/bash
# https://yunli.nl/blogs/2020-08-17_waking_up_with_rtcwake_and_crontab/

alias eko=' ${BASH_SOURCE##*/}:${LINENO}'
export PS4='+(${BASH_SOURCE}:${LINENO}): ${FUNCNAME[0]:+${FUNCNAME[0]}(): }'

echo  $(date +%y_%d_%m#%H:%M:%S) "Starting"
echo ${HOME}
who
echo $USER
source ${HOME}/.bashrc
echo $PATH
spy
date
pwd
export MINEKOLEVEL=INFO
env666
cd ~/dev/git/cron
date
which python
spy

if test -f ./no_suspend.txt; then
    echo exiting, no suspend
    exit 1
fi

############### work

sleep 20


############### end
# s'endormir et se réveiller à 3h55 demain

#rtcwake -m mem -t $(date +\%s -d "tomorrow 03:55")
#sudo rtcwake -m no -t $(date +\%s -d "tomorrow 03:55")

echo  $(date +%y_%d_%m#%H:%M:%S) "going to sleep"
my-suspend
echo  $(date +%y_%d_%m#%H:%M:%S) "resuming"
echo end run.sh








