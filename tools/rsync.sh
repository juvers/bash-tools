#!/bin/zsh

# Rsync content from local to remote
rsync -avz -e ssh 2020allamerican jkuti@apollo4:/home/jkuti/seiApp/public/client/country

# Rsync content from remote to local into current folder
rsync -avz -e ssh jkuti@apollo4:/home/jkuti/seiApp/public/client/country/2020allstar .