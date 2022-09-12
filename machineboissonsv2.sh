#!/bin/bash

clear

read -p "Quelle boisson desirez-vous ? " rep
clear
until  [[ $rep = café || $rep = thé || $rep = chocolat || $rep = potage ]]
do read -p "Quelle boisson desirez-vous ?
Je propose
- café
- thé
- chocolat
- potage " rep
done
clear

if [ $rep = "café" ]
then read -p "Prix : 40          
                         " prix
until [[ $prix = 40 ]]
do echo "Montant incorrect"
sleep 1 
clear
read -p "Prix : 40       
                         " prix
done
echo "Voici votre café"
sleep 2
clear

elif [ $rep = "thé" ]
then read -p "Prix : 40          
                         " prix
until [[ $prix = 40 ]]
do echo "Montant incorrect"
sleep 1 
clear 
read -p "Prix : 40       
                         " prix
done
echo "Voici votre thé"

sleep 2
clear

elif [ $rep = "chocolat" ]
then read -p "Prix : 40          
                         " prix
until [[ $prix = 40 ]]
do echo "Montant incorrect"
sleep 1 
clear
read -p "Prix : 40       
                         " prix
done
echo "Voici votre chocolat"
sleep 2
clear

elif [ $rep = "potage" ]
then read -p "Prix : 40          
                         " prix
until [[ $prix = 40 ]]
do echo "Montant incorrect"
sleep 1 
clear
read -p "Prix : 40       
                         " prix
done
echo "Voici votre potage"
sleep 2
clear

else echo "Réponse non satisfaisante"
fi
sleep 1
echo "Merci d'avoir pris un $rep et à bientôt


