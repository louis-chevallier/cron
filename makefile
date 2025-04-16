DEPLOY_DIR = /deploy
export DATE:=$(shell date +%Y-%m-%d_%Hh%Mm%Ss)
export HOST=$(shell hostname)
SHELL=bash
export GITINFO=$(shell git log --pretty=format:"%h - %an, %ar : %s" -1)
#WOD="$(shell fortune -s)"
WOD?='$(shell fortune -s | sed -e 's/["]//g' | sed -e "s/[']//g")'


deploy :
	-git commit -a -m $(WOD)
	-git push
	-cd $(DEPLOY_DIR); rm -fr cron; git clone  https://github.com/louis-chevallier/cron.git; 

