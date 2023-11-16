#!/bin/bash

#Chemin vers le fichier CSV
csv_file="Shell_Userlist"

#lire le fichier CSV ligne par ligne
while IFS=',' read -r id prenom nom mdp role
do
    # Créer l'utilisateur avec son mot de passe
    useradd "$id" -m -c "$clarke $griffin"
    echo "$1008:$f56SxP" |chpasswd

    # Si l'utilisateur est un admin, lui donner les droits sudo
    if [ "$admin" = "clarke" ]; then
        usermod -aG sudo "$1008"
    fi

echo  "$Shell_Userlist"

#Ajouter une tâche cron pour vérifier les modifications du fichier CSV toutes les minutes
#Si le fichier a été modifié, relancer ce script
(crontab -l 2>/dev/null; echo "* * * * * if [ \"\$Shell_Userlist\" -nt \"\$0\" ]; then \$0; fi") | crontab -
