#!/bin/bash
clear
echo "###############################################################################"
echo "#  BASHTE TEXT EDITOR -  \\\ = interupt  :q = quit  :w = write.               #"
echo "#  :wq = Write and quit  :q! = quit and discard  :dd = Delete Previous line   #"
echo "###############################################################################"
echo ""
read -p "Enter file name: " file
touch $file
touch .BASHTE/MASTER/BASHTE
clear
echo "###############################################################################"
echo "#  BASHTE TEXT EDITOR -  \\\ = interupt  :q = quit  :w = write.               #"
echo "#  :wq = Write and quit  :q! = quit and discard  :dd = Delete Previous line   #"
echo "###############################################################################"



while true
do  lines=$(wc -l .BASHTE/MASTER/BASHTE)
    read -p "$lines >" store
    if [ "$store" = "\\:q" ]
    then
        break
    elif [ "$store" = "\\:w" ]
    then
        cat .BASHTE/* >> $file
    elif [ "$store" = "\\:wq" ]
    then
        cat tempfile.txt >> $file
        rm -rf tempfile.txt
        break
    elif [ "$store" = "\\:q!" ]
    then
        rm -rf tempfile.txt
        rm -rf $file
        break
    else
        echo $store >> tempfile.txt
    fi
done






# | cut -d " " -f 1





