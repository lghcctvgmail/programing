#!/bin/sh

tuncatstring()
{
	echo aaaa "$0" "$1" "$2" "$3"
}
echo find current dir filename

FINENAEM=filename.txt
rm -f $FINENAEM
echo $FINENAEM
touch $FINENAEM
echo  gen....

find . -name "*.cpp" -print | xargs echo >> $FINENAEM
find . -name $FINENAEM -print | xargs -i sed -i "s/.\///g" {}
find . -name $FINENAEM -print | xargs -i sed -i "s/.cpp//g" {}
find . -name $FINENAEM -print | xargs -i cat {}

#echo find ...
#find . -name "*.cpp" -print | xargs -i echo 
#echo 22 ...
#echo aaaaaaaaa|awk `{print substr(,1,8)}`

#echo 33 ...
#tuncatstring aa bb cc dd 
#echo end ...

#var=http://www.google.com/test.htm
#echo ${var#*//}
#echo ${var##*/}
#echo ${var%/*}
#echo ${var%%/*}
#echo ${var:0:5}
#echo ${var:7}
#echo ${var:0-7:3}
#echo ${var:0-7}



#FILELINE=$(cat filename.txt)
#echo $FILELINE


