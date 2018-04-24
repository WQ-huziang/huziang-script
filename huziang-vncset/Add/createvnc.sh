#!/bin/bash

# build vnc server
for user in `cat username`
do
    if [ ! -f "/home/${user}/.vnc/xstartup" ]
    then
        expect buildvnc.exp ${user} 123${user}
        expect killvnc.exp ${user} 123${user}
        rm /home/${user}/.vnc/*
        cp /root/.vnc/xstartup /home/${user}/.vnc/xstartup
        chown ${user}:${user} /home/${user}/.vnc/xstartup
    fi
done
echo "Build VNC Startup Finish!"
