#!/bin/bash
IFS=$'\n'

big=""

path=$1

for i in `ls -R $path | grep /`
do
  result=`echo ${i//":"}`
  for j in `echo $result | sed 's/\//\n/g'` 
  do
    if (( ${#big} < ${#j} )) ; then
      big=`echo $j`
    fi
  done
done

echo "subdir=$big" | tee $GITHUB_OUTPUT
