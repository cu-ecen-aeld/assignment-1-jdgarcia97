#!/bin/sh

writefile=$1 # path to file to write to.
writestr=$2  # string to write to file.


if [ $# != 2 ]; then
	echo "You must pass in all required arguments."
	exit 1;
fi


# Determine if the directory exists
# If it does not create it. 
if [ ! -d ${writefile%/*} ]; then
	mkdir -p ${writefile%/*};
	echo ${writestr} > ${writefile};
 else
	 # Directory does exist, so just write to the file.
	 echo ${writestr} > ${writefile}; 
      		      
fi



