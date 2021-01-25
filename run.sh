#!/bin/bash
if [ $1 ]
then
    if [ $1 == "local" ]
    then
        ./tools/init.sh
        read -p "Press enter to continue"
    fi
    if [ $1 == "ssh" ]
    then
        ./tools/ssh_scripts/ssh_deploy.sh $2 $3
    fi
else
    tput setaf 1
    tput bold
    echo " "
    echo "error : no argument specified"
    echo " "
fi
