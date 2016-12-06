#!/bin/bash

if [[ $1 ]]
	then
	datum=$(date)
	read -p "Notiz: " notiz
	cd 
	topic=$1
	if [[ -e $topic ]]
		then
		cd $topic/
		if [[ -e "notes.txt" ]]
			then
			echo $datum >> notes.txt
			echo $notiz >> notes.txt
		else
			touch "notes.txt"
			echo $datum >> notes.txt
			echo $notiz >> notes.txt
		fi
	else
		mkdir $topic
		cd $topic/
		touch "notes.txt"
	fi
else
	echo "Sie haben keinen Ziel-Ordner angegeben."
fi

