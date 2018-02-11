#!/bin/bash
#Week 3 Homework, Chapter 3
#Glanel Houenouvi
#CSCI 2461-70 Computer Networking-Linux
#create text name Salut les Amis
echo "Salut les Amis"
#check if /dev/null receive any information
cat /dev/null
#check the file device
ls -l /dev/null
#create a file that map a block devices
ls -l /dev /dev/mapper | grep '^b' > MonOrdi.txt
#view the new file
cat MonOrdi.txt
#let's collect all blocks and turn into Hexidexcimal
cd ~;pwd; dd if=/dev/zero of=./MonOrdi.txt bs=1M count=3
#hexadump
hexdump MonOrdi.txt

