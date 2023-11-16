#!/bin/bash

# Vérifiez que le nombre d'arguments est correct
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 Hello|Bye"
    exit 1
fi

# Récupérez l'argument
arg=$1

# Affichez le message approprié
if [ "$arg" = "Hello" ]; then
    echo "Bonjour, je suis un script !"
elif [ "$arg" = "Bye" ]; then
    echo "Au revoir et bonne journée !"
else
    echo "Argument non reconnu. Utilisez 'Hello' ou 'Bye'."
fi
