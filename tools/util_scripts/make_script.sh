#!/bin/bash
mkdir $1 &> /dev/null
cd $1
touch $2 &> /dev/null
cd ..
cp ./tools/util_scripts/script.sh $1/$2
