#!/bin/bash

# add username
read -t 30 -p "Please input user name: " name
echo "$name" >> username
echo "Add user name success!"

# add user
./Add/adduser.sh

# add vnc
./Add/createvnc.sh
