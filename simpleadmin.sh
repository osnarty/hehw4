# this will take 4 inputs for $1 $2 $3 $4 and do the following listed below
# a ex. will be ./simpleadmin dir1 dir2 filename.txt softlink
# dir1 = $1 / dir2 = $2 / filename.txt =$3 / softlink = $4
# it will make dir2 under dir1 then create a file called filename.txt and inputs hello world into it
# then it will move the filename.txt udner dir2
# it will create a softlink from the working directory to dir2

#!/bin/bash

echo enter name for directory 1 and 2 text file name and link name:
mkdir -p /home/debian/$1/$2 #this makes a subdirectory under $1
echo creating a directory name $1.
echo creating a directory name $2 under $1.
echo

echo creating text file with name $3.
touch $3
echo "Hello World" >> $3 
echo file is created with name $3 and hello world is added into it.
echo

echo moving $3 to $2
mv $3  /home/debian/$1/$2
echo $3 has been moved to $2!
echo

echo creating soft link with name $4 to $2
ln -s /home/debian/$1/$2 $4
echo the soft link has been created.




