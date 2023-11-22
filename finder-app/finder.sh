#!/bin/sh
filesdir=$1       # path to directory.
searchstr=$2       # text string to search in files.  

if [ ! ${filesdir}  ]; then  
       exit 1;
fi

if [ ! ${searchstr} ]; then
	exit 1;
fi

if [ ! -d $filesdir ]; then
	echo "Path is not a file";
	exit 1;

fi

file_count=$( find ${filesdir} -type f | wc -l) # get the number of files in the dir and sub dirs.
str_count=$(grep -R ${searchstr} ${filesdir} | wc -l )

echo "The number of files are ${file_count} and the number of matching lines are ${str_count}"
