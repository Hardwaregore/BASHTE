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
    # Detects if tempfile.txt is modified
    then
        if [ -s tempfile.txt ]
        then
            echo "File has been modified. Do you want to save it? (y/n)"
            read -p "$" save
            if [ "$save" = "y" ]
            then
                mv tempfile.txt $file
                echo "File saved"
                break
            elif [ "$save" = "n" ]
            then
                echo "File discarded"
                break
            else
                echo "Invalid input"
            fi
        else
            echo "File has not been modified"
            break
        fi
    elif [ "$store" = ":w" ]
    then
        mv tempfile.txt $file
        echo "File saved"
    elif [ "$store" = ":wq" ]
    then
        mv tempfile.txt $file
        echo "File saved"
        break
    elif [ "$store" = ":q!" ]
    then
        echo "File discarded"
        break
    else
        echo "$store" >> tempfile.txt
    fi
    then
        break
    elif [ "$store" = ":w" ]
    then
        cat tempfile.txt >> $file
    elif [ "$store" = ":wq" ]
    then
        cat tempfile.txt >> $file
        break
    elif [ "$store" = ":q!" ]
    then
        break
    else
        echo $store >> tempfile.txt
    fi
done



