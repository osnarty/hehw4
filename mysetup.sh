# this script when ran changes cpu freq to 600, displays the info of cpu 
# this will then create a variable called location and assigned the value home debian
# then it will display how many items are in the working directory

#!/bin/bash
echo
echo changing cpu freq to 600mhz
sudo cpufreq-set -f 600MHz


echo
echo display information of cpu command
cpufreq-info

echo
echo creating a variable named location:
location=/home/debian

echo
echo getting location value:
echo $location

echo variable items will display number of items in current directory:
items=$(ls -l $pwd | wc -l)
echo There are $items files in here.

