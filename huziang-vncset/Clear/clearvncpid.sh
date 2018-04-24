#!/bin/bash

# remove all vnc pid
# user when reboot server
for user in `cat username`
do
  rm /home/${user}/.vnc/*.pid
  rm /home/${user}/.vnc/*.log
done
~/.vnc/killvncclient.sh
echo "VNC pid clear!"
