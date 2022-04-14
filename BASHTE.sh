#!/bin/bash
clear
echo "###########################################################"
echo "#  BASHTE TEXT EDITOR -  :q = quit  :w = write            #"
echo "#  :wq = Write and quit  :q! = quit and discard           #"
echo "###########################################################"
echo ""
read -p "Enter file name: " file
touch $file
touch tempfile.txt
clear
echo "###########################################################"
echo "#  BASHTE TEXT EDITOR -  :q = quit  :w = write            #"
echo "#  :wq = Write and quit  :q! = quit and discard           #"
echo "###########################################################"


read -p ">" store
# stores store in file
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt

 cat tempfile.txt >> $file
