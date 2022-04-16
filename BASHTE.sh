#!/bin/bash
clear
echo "###############################################################################"
echo "#  BASHTE TEXT EDITOR -  \\\ = interupt  :q = quit  :w = write                #"
echo "#  :wq = Write and quit  :q! = quit and discard  :dd = Delete Previous line   #"
echo "###############################################################################"
echo ""
read -p "Enter file name: " file
touch $file
touch .BASHTE
clear
echo "###############################################################################"
echo "#  BASHTE TEXT EDITOR -  \\\ = interupt  :q = quit  :w = write                #"
echo "#  :wq = Write and quit  :q! = quit and discard  :dd = Delete Previous line   #"
echo "###############################################################################"



while true
do  lines=$(wc -l .BASHTE)
    read -p "$lines >" store
    if [ "$store" = "\\:q" ]
    then
        break
    elif [ "$store" = "\\:w" ]
    then
        cat .BASHTE/* >> $file
    elif [ "$store" = "\\:wq" ]
    then
        cat .BASHTE >> $file
        rm -rf .BASHTE
        break
    elif [ "$store" = "\\:q!" ]
    then
        rm -rf .BASHTE
        rm -rf $file
        break
    else
        echo $store >> .BASHTE
    fi
done






# | cut -d " " -f 1





