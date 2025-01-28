
sudo crontab -e

et mettre  : pour que les droits soient bien a chaque reboot

@reboot /home/louis/dev/git/cron/on_reboot.sh



crontab -e

et mettre :

# a 4h00
00 04 * * * /home/louis/dev/git/cron/run.sh >> /home/louis/dev/git/cron/trace.trc





# hpet

https://askubuntu.com/questions/1253874/how-to-disable-hpet-in-linux


sudo -H gedit /etc/default/grub

Find:

"quiet splash"

Change it to:

"quiet splash hpet=disable"

Then:

sudo update-grub
