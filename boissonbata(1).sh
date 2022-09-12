#!/bin/bash

#$rep : réponse de l'utilisateur (choix de la boisson)
#$prix : somme de monnaie inserée par l'utilisateur
#$prx : prix fixé de la boisson
#$dif : somme de monnaie manquante si l'utilisateur ne met pas suffisement de monnaie
#$tp : trop perçu du monnaie si l'utilisateur donne trop de monnaie (le trop perçu lui est rendu)


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

if [ $rep = café ]
then prx=40 
elif [ $rep = thé ]
then prx=35 
elif [ $rep = chocolat ]
then prx=50 
elif [ $rep = potage ]
then prx=45
fi

# je définis ma fonction servir
function servir() {

read -p "Prix : $prx centimes (pour insérer la monnaie, taper sur votre clavier une valeure numérique)
                         " prix
if [ $prix -lt $prx ] 
then
dif=$(($prx - $prix)) 
echo "Je ne peux malheureusement pas vous servir votre $rep il manque $dif centimes
Au revoir"
exit
elif [ $prix -gt $prx ]
then
tp=$(($prix - $prx ))
echo Voici votre monnaie : $tp centimes
sleep 1
echo "Voici votre $rep" 
elif [ $prix = $prx ] 
then echo "Voici votre $rep"
fi


}


servir   # j'appelle ou j'execute ma fonction servir

sleep 2
clear

sleep 1
echo "Merci d'avoir pris un $rep et à bientôt"
