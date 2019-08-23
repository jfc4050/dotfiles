#!/bin/bash

# copy-pasted from Joe Bergevin's answer at https://askubuntu.com/questions/833448/how-to-update-vs-code-on-ubuntu
wget https://vscode-update.azurewebsites.net/latest/linux-deb-x64/stable -O /tmp/code_latest_amd64.deb
sudo dpkg -i /tmp/code_latest_amd64.deb
