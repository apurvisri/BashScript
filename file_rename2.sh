#/bin/bash


#cd /Users/apurvisrivastava/Desktop/Apurvi/ShellScript


function file_rename() {

cd $1
echo "Enter prefix for files (prefered to be a number)"
read PRIFIX


DATE=`date +%F`
file='*.jpg'

if [ -z $PRIFIX ]
then
  echo "Prefix entered is empty"
  for i in $file
   do
   if [[ $i =~ ^[0-9] ]]
   then
     continue
   else
     newfile=`mv $i $DATE-$i`
     echo "$newfile"
   fi
  done

else 
   for j in $file
   do
     if [[ $j =~ ^[0-9] ]]
     then
       continue
     else
       newfile1=`mv $j $PRIFIX-$j`
       echo "$namefile"
     fi
   done 
fi 
 
}


file_rename /Users/apurvisrivastava/Desktop/Apurvi/ShellScript
