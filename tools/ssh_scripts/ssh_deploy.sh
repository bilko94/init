#!/bin/bash
echo " "
tput setaf 6
tput bold

if [ $2 ]
then
    if [ $2 == "hard" ]
    then
        echo "                                  <<< hard_deploy >>>"
        echo ""
        ssh $1 rm -rf init;
        ssh $1 mkdir init;
        scp -r network system scripting tools $1:~/init
        ssh -t $1 "cd init; ./tools/util_scripts/dep.sh"
    fi
else 
    echo "                                  <<< soft_deploy >>>"
    echo ""
    scp -r network system scripting tools $1:~/init
fi
echo " "
echo "                                  <<< running commands >>>"
echo " "
ssh -t $1 "cd init; ./tools/init.sh"
echo " "
echo "<<< Operation completed >>>"
echo " "