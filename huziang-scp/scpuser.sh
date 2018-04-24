#!/bin/bash

# add user
for user in `cat username`
do
    expect ./passwd.exp ${user}
done
echo "User copy Finish!"

