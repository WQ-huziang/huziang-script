#!/bin/bash

# test vncserver
for user in `cat username`
do
  if [ ! -f /home/${user}/.vnc/*.pid ]
  then  
    expect buildvnc.exp ${user} 123${user}
  fi
done
echo "Vnc Test Over!"
