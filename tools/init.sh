#!/bin/bash
./tools/print_scripts/start.sh

for file in ./network/*
do
  if [ $file = "./network/06" ]
  then
    ./tools/util_scripts/run_output.sh "$file"
  else
    ./tools/util_scripts/run_script.sh "$file"
  fi
done

for file in ./system/*
do
  ./tools/util_scripts/run_output.sh "$file"
done

for file in ./scripting/*
do
  ./tools/util_scripts/run_output.sh "$file"
done

./tools/print_scripts/end.sh