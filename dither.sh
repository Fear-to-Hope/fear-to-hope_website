#!/bin/bash

for file in full_images/*;
do
	path=$(echo $file | sed 's/full_images//g' | sed 's/.jpg/.png/g')
	convert $file -dither FloydSteinberg -colors 8 -strip images/$path
done
