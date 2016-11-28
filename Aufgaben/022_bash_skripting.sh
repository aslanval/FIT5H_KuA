#!/bin/bash
read -p "Geben Sie die 1. Zahl ein: " eins
if [[ $eins 

read -p "Geben Sie die 2. Zahl ein: " zwei
ergebnis1=$((eins+zwei))
echo "1.Zwischenergebnis lautet: " $ergebnis1

weitere=''
n=1

until [[ $weitere = 'exit' ]]
do
	read -p "Weitere Zahl hinzuaddieren oder mit exit beenden: " weitere
	ergebnis1=$((ergebnis1+weitere))

	if [[ $weitere = 'exit' ]]
		then
		n=$n
		echo "Endergebnis: "$ergebnis1" Das Programm wurde beendet."
	else
		((n++)) # oder =$((n+1))
		echo "Bisher wurden "$n" Zahlen eigegeben. Das Zwischenergebnis lautet: "$ergebnis1
	fi
done

# eine Variable benoetigt kein $, wenn diese neu definiert oder veraendert wird.

# if $eins | [[:digit:]]