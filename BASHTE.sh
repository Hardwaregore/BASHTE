#!/bin/bash
clear
echo "###############################################################################"
echo "#  BASHTE TEXT EDITOR -  \\\ = interupt  :q = quit  :w = write                 #"
echo "#  :wq = Write and quit  :q! = quit and discard  :dd = Delete Previous line   #"
echo "###############################################################################"
echo ""
read -p "Enter file name: " file
touch .$file
clear
echo "###############################################################################"
echo "#  BASHTE TEXT EDITOR -  \\\ = interupt  :q = quit  :w = write                 #"
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
        cat .$file >> $file
        rm -rf .$file
        break
    elif [ "$store" = "\\:q!" ]
    then
        rm -rf .$file
        rm -rf $file
        break
    else
        echo $store >> .$file
        cat .BASHTE >> BASHTE
    fi
done






# | cut -d " " -f 1





