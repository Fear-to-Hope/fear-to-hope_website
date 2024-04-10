#!/bin/bash

for file in ./src/*.html;
do
	name=${file##*/}
	cat ./src/headfile $file ./src/tailfile > ./$name
done
