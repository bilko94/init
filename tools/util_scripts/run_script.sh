#!/bin/bash
tput bold

tput setaf 6
tput smul
echo "<<< $1 >>>"
tput rmul
echo " "
cat $1
echo " "
echo " "

tput rmul
tput setaf 2
$1

tput setaf 6
echo " "
tput smul
echo "<<< $1 >>>"
tput rmul
tput sgr0
./tools/print_scripts/space.sh

