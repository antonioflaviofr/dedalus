#!/bin/bash
IFS=$'\n'

big=""

echo "Input path:"
read path

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

echo "The longest subdirectory name under \"$path\" is: \"$big\"" | tee $GITHUB_OUTPUT
