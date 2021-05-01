#!/bin/bash

outputfolder=~/research
outputfile=$outputFolder/sys_info.txt

# if and then statement to check if the research directory exist
if [! -d $outputfolder ] 
then
mkdir $outputfolder
fi

# checking for the existence of the sys_info.txt
if [ -f $outputfile]
then
rm  $outputfile
fi

echo "A quick system audit script" >> $outputfile
date >> $outputfile
echo ""
echo "Machine Type Info:" >> ~/research/sys_info.txt
echo $MACHTYPE >> ~/research/sys_info.txt
echo -e "Uname info: $(Uname -a) \n" >> ~/research/sys_info.txt
echo -e "IP Info: $(ip addr | grep inet | tail -3 | head -1) \n" >> ~/research/sys_info.txt
echo "Hostname: $(hostname -s)" >> ~/research/sys_info.txt
echo "DNS Servers: " >> ~/research/sys_info.txt
cat /etc/resolv.conf
echo "Memory Info" >> ~/research/sys_info.txt
free
echo -e "\nCPU Info:" >> ~/research/sys_info.txt
lscpu | grep CPU
echo -e "\nDisk Usage:'
df -H | head -2
echo -e "\nWho is logged in: \n $(who) \n" >> ~/research/sys_info.txt


echo -e "\n777 Files:" >> ~/research/sys_info.txt
find / -type f -perm 777 >> ~/research/sys_info.txt
echo -e "\nTop 10 processes" >> ~/research/sys_info.txt
ps aux -m | awk '{print $1, $2, $3, $4, $11}' | head >> ~/research/sys_info.txt

