#!/bin/bash
read -p "Ihre Eingabe: " var_name	#durch read-p startet eine Eingabeaufforderung, das eingegebene wird in var_name übergeben
echo "Der Parameter lautet: $1"		#das was nach dem Befehl als Dateinamen angegeben wird in der Console, wird in $1 geschoben

if [[ -e $1 ]]
then
	if [[ $var_name = $1 ]]
	then
		echo "Die Eingabe $var_name stimmt mit dem Parameter: $1 überein"
	else
		echo "Die Eingabe $var_name stimmt nicht mit dem Parameter: $1 überein"
	fi	
else
	echo "Die Datei $1 ist nicht vorhanden!"
fi 
