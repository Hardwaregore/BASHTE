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




while true
do
    read -p ">" store
    if [ "$store" = ":q" ]
    then
        break
    elif [ "$store" = ":w" ]
    then
        cat tempfile.txt >> $file
    elif [ "$store" = ":wq" ]
    then
        cat tempfile.txt >> $file
        rm -rf tempfile.txt
        break
    elif [ "$store" = ":q!" ]
    then
        rm -rf tempfile.txt
        break
    else
        echo $store >> tempfile.txt
    fi
done



