#!/bin/bash
##
# Mihai I. - 2019 idumihai16@gmail.com
##
# Description : This is an script in order to be run on each pipeline agent to extract the packets from the OS.


DIRECTORY=rpms
WORKING_DIRECTORY=$PWD

for file in  $WORKING_DIRECTORY/*
do 
	if [ "${file}" == "$WORKING_DIRECTORY/pachets_list" ]
	then
		countNumberofPackets=$(wc pachets_list | awk '{ print $2 }')
		echo "================================================="
		echo " A total number of ${countNumberofPackets} will be exported as rpm's and transfer to ansible-playbook /files/* "
		if [ ! -d "$DIRECTORY" ]; then
		#Creates the directory rpms/ obly if this one doesnt exists.
			mkdir $DIRECTORY/
		fi
		echo "================================================="
		echo "The following list of packages will pe exported: "
		while read line; do echo $line; done < pachets_list
		echo "================================================="
		while read line; do sudo yumdownloader --resolve --destdir=$DIRECTORY/ $line; done < pachets_list
		echo "================================================="
		countNumberofRPMs=$(ls -l  $DIRECTORY/ | grep -v ^l | wc -l)
		echo "The number of rpm's files exported is: $countNumberofRPMs"
		echo "================================================="
		break
	fi
done

##
# EOF
##
