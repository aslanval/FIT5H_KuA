#!/bin/bash
#read -p "Ihre Eingabe: " var_name
#echo "Der Parameter lautet: $1"
#
#if [[ -e $1 ]]
#then
#	if [[ $var_name = $1 ]]
#	then
#		echo "Die Eingabe $var_name stimmt mit dem Parameter: $1 überein"
#	else
#		echo "Die Eingabe $var_name stimmt nicht mit dem Parameter: $1 überein"
#	fi	
#else
#	echo "Die Datei $1 ist nicht vorhanden!"
#fi

q="q"

while [[ $eingabe -eq $q ]]
do
	read -p "Eingabe: " eingabe
	echo $eingabe
done