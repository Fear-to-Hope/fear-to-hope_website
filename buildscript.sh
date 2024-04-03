#!/bin/bash

for file in $*;
do
	tail -n +13 $file > tmp
	cat headfile tmp > $file
done
rm tmp
