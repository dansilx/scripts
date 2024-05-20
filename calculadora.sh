#!/bin/bash

resultado=0
echo "***CALCULADORA***"
echo "1) Adição"
echo "2) Subtração"
echo "3) Multiplicação"
echo "4) Divisão"
echo "5) Zerar"
echo ": Número"
echo "$ Operação"
while true; do
	echo ":"
	read numero
	echo "$"
	read operacao
	
	case $operacao in
		"1")
			resultado=$(echo "$resultado + $numero" | bc)
			;;
		"2")
			resultado=$(echo "$resultado - $numero" | bc)
			;;
		"3")
			resultado=$(echo "$resultado * $numero" | bc)
			;;
		"4")
			resultado=$(echo "scale=2; $resultado / $numero" | bc)
			;;
		"5")
			resultado=0
			;;
		*)
			echo "/?"
			;;
	esac

	echo ": $resultado"
done
		
