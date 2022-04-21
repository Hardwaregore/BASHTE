#!/bin/bash

echo $1 | wc $1 >> $secondarg

if [ $secondarg -lt 2 ]; then
echo "
