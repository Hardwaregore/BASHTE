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
do  lines=$(cd BASHTE && ls -1 | wc -l && cd ..)
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

        echo $store >> BASHTE/$lines.txt
    fi
done






# | cut -d " " -f 1

# counts the amount of files in the directory
ls -1 | wc -l





