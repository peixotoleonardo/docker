#!/bin/bash

result=`echo $(docker run -it --rm leopctec23/fullcycle:latest) | sed 's/\\r//g'`
expected="Full Cycle Rocks!!"

if [[ "$result" == "$expected" ]]; then
  echo -e "\033[32m Container show expected output:\033[0m $result" 
else
  echo -e "\033[31m Container show unexpected output:\033[0m $result"
fi