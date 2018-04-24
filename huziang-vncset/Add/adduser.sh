#!/bin/bash

# add user 
for user in `cat username`
do
    egrep "^$user" /etc/passwd >& /dev/null
    if [ $? -ne 0 ]
    then
        useradd -s /bin/bash -d /home/${user} -m ${user}
        expect ./Add/changepasswd.exp ${user}
        echo "The user $user add!"
    fi
done
rm pass
echo "User Add Finish!"
