#!/bin/bash

FILE=$1

for i in "$FILE"
do
  if [ ${i: -4} == ".pdf" ]
  then 
  echo "$i is pdf file"
  exit 1

  elif [ -d "$i" ]
  then 
  echo "$i is directory"
  exit 2
  else 
  echo "$i is of other type of files"
  exit 2
fi
done

