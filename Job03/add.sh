#!/bin/bash
# add.sh

# Vérifiez si deux arguments ont été fournis
if [ $# -ne 2 ]; then
    echo "Erreur : Veuillez fournir exactement deux nombres."
    exit 1
fi

# Additionnez les arguments
let sum=$1+$2

# Affichez le résultat
echo "La somme de $1 et $2 est $sum."

