#!/bin/bash

# test vncserver
for user in `cat username`
do
  if [ -f /home/${user}/.vnc/*.pid ]
  then
    echo "${user} has pid"
  else
    echo "${user} has not pid"
  fi
done
