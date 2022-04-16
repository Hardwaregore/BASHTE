#!/bin/bash
clear
echo "###############################################################################"
echo "#  BASHTE TEXT EDITOR -  \\\ = interupt  :q = quit  :w = write                 #"
echo "#  :wq = Write and quit  :q! = quit and discard  :dd = Delete Previous line   #"
echo "###############################################################################"
echo ""
read -p "Enter file name: " file
touch .$file
mkdir BASHTE
clear
echo "###############################################################################"
echo "#  BASHTE TEXT EDITOR -  \\\ = interupt  :q = quit  :w = write                 #"
echo "#  :wq = Write and quit  :q! = quit and discard  :dd = Delete Previous line   #"
echo "###############################################################################"



while true
do  
    read -p "$lines >" store
    if [ "$store" = "\\:q" ]
    then
        break
    elif [ "$store" = "\\:w" ]
    then
        ls BASHTE/* | sort -n | xargs cat >> $file
    elif [ "$store" = "\\:wq" ]
    then
        ls BASHTE/* | sort -n | xargs cat >> $file
        rm -rf .$file
        break
    elif [ "$store" = "\\:q!" ]
    then
        rm -rf BASHTE
        rm -rf $file
        break

    elif [ "$store" = "\\:dd" ]
    then
    LinesMinusOne=$(expr $lines - 1)
    rm -rf BASHTE/$LinesMinusOne.txt
    else

        echo $store >> BASHTE/$lines.txt
        # counts the number of times the while loop is run
        ((lines++))
    fi
done













