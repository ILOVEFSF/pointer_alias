#!/bin/bash

#This script display the pointer_type node info

GCC=/home/test/Downloads/gcc-4.4.0/exe/bin/gcc
PWD=/home/test/test_gcc_pointer
#echo "Start to dump pointer alias info"

#echo "================================"

#echo -n "your GNU GCC version: " 

$GCC --version

#$GCC $1

for file in $PWD/*
do 
	if [ -d "$file" ] 
 	then 
 	echo "$file is a directory" 
 	elif [ -f "$file" ] 
 	then
	grep pointer $file > $file.pointer
 	echo "$file is a file" 
 	fi 
done
