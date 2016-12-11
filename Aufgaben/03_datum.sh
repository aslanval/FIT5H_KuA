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
		echo $datum >> notes.txt	# Z.12 & Z.13 ersetzen das dadrunter
		echo $notiz >> notes.txt	#
#		if [[ -e "notes.txt" ]]
#			then
#			echo $datum >> notes.txt
#			echo $notiz >> notes.txt
#		else
#			touch "notes.txt"
#			echo $datum >> notes.txt
#			echo $notiz >> notes.txt
#		fi
	else
		mkdir $topic
		cd $topic/
#		touch "notes.txt"			#Ordner muss wegen Z.27&28 nicht erstellt werden.
		echo $datum >> notes.txt
		echo $notiz >> notes.txt
	fi
else
	echo "Sie haben keinen Ziel-Ordner angegeben."
fi

