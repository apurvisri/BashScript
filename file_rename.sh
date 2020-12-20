#!/bin/bash

#cd /Users/apurvisrivastava/Desktop/Apurvi/ShellScript

function file_rename() {

cd $1
file='*.jpg'
 for i in $file
 do
 if [[ $i =~ ^[0-9] ]] 
 then
   continue
 else
   DATE=`date +%F`
   #echo $DATE 
   #echo $i
   newfile=`mv $i $DATE-$i`
   echo "$newfile"
 fi
 done
}

file_rename /Users/apurvisrivastava/Desktop/Apurvi/ShellScript 
