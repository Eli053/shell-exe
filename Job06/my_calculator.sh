#!/bin/bash

# Vérifier que trois arguments ont été fournis
if [ $# -ne 3 ]; then
    echo "Usage: $0 number1 operator number2"
    exit 1
fi

# Lire les arguments
number1=$1
operator=$2
number2=$3

# Effectuer l'opération appropriée
case $operator in
    '+')
        result=$(($number1 + $number2))
        ;;
    '-')
        result=$(($number1 - $number2))
        ;;
    'x')
        result=$(($number1 * $number2))
        ;;
    '/')
        if [ $number2 -eq 0 ]; then
            echo "Erreur : Division par zéro."
            exit 1
        fi
        result=$(($number1 / $number2))
        ;;
    *)
        echo "Operator not recognized. Use +, -, x or /."
        exit 1
esac

# Afficher le résultat
echo "Le résultat de $number1 $operator $number2 est $result."
