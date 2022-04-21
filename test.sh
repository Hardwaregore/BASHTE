#!/bin/bash

secondarg=$(echo $1 | wc $1)

if [ $secondarg -lt 2 ]; then
    echo "You entered a word that has a word count of <2"
else
    echo "You entered a word that has a word count of >2"
fi