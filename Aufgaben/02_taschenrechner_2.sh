#!/bin/bash
read -p "Geben Sie die 1. Zahl ein: " erste
weitere=0
n=1
ergebnis=$erste

until [[ $weitere = 'exit' ]]
do
	echo "Bisher wurden" $n "Zahlen eingegeben."
	echo "Das Zwischenergebnis lautet" $ergebnis
	read -p "Geben Sie eine weitere Zahl ein oder beenden Sie mit exit: " weitere
	if [[ $weitere = 'exit' ]]
		then
		echo "Endergebnis lautet" $ergebnis
	else
		if [[ $weitere -gt 0 ]]
			then
			ergebnis=$((ergebnis + weitere))
			((n++))
		else
			echo "Geben Sie nur Źahlen ein !"
		fi
	fi
done