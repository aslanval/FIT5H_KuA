#!/bin/bash
q="q"

while [[ $eingabe -eq $q ]]
do
	read -p "Eingabe: " eingabe
	echo $eingabe
done