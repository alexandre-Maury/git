#!/usr/bin/env bash

#==============================================================================================================
#
# Auteur  : Alexandre Maury 
# Version 1.2
# License : GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007
# Faire une modification du clonage dans /temp/
#==============================================================================================================

# Configure les identifiants git ci celui-ci le souhaite
read -p "[*] Souhaitez-vous configurer Git ==> y/N " git
if [ $git = 'y' ]; then
    read -p "==> Entrez votre nom d'utilisateur : " name
    read -p "==> Entrez votre adresse email : " email	
    git config --global user.name "${name}"
    git config --global user.email "${email}"
        
    printf "%s \\n" "[Succès] Vos identifiants git sont configurés"
fi
