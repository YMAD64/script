#!/bin/bash

#$rep : réponse de l'utilisateur (choix de la boisson)
#$prix : somme de monnaie inserée par l'utilisateur
#$prx : prix fixé de la boisson
#$dif : somme de monnaie manquante si l'utilisateur ne met pas suffisement de monnaie
#$tp : trop perçu du monnaie si l'utilisateur donne trop de monnaie (le trop perçu lui est rendu)





clear
pcafe=40
pthe=35
pchocolat=50
ppotage=45
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
then read -p "Prix : $pcafe centimes          (pour insérer la monnaie, taper sur votre clavier une valeure numérique)
                         " prix
if [ $prix -lt $pcafe ] 
then
dif=$(($pcafe - $prix)) 
echo "Je ne peux malheureusement pas vous servir votre café il manque $dif centimes
Au revoir"
exit
elif [ $prix -gt $pcafe ]
then
tp=$(($prix - $pcafe ))
echo Voici votre monnaie : $tp centimes
sleep 1
echo "Voici votre café" 
elif [ $prix = $pcafe ] 
then echo "Voici votre café"
fi

sleep 2
clear

elif [ $rep = "thé" ]
then read -p "Prix : $pthe centimes          (pour insérer la monnaie, taper sur votre clavier une valeure numérique)
                         " prix
if [ $prix -lt $pthe ]
then
dif=$(($pthe - $prix))
echo "Je ne peux malheureusement pas vous servir votre thé il manque $dif centimes
Au revoir"
exit
elif [ $prix -gt $pthe ]
then
tp=$(($prix - $pthe))
echo Voici votre monnaie : $tp centimes
sleep 1
echo "Voici votre thé"
elif [ $prix = $pthe ]
then echo "Voici votre thé"
fi

sleep 2
clear

elif [ $rep = "chocolat" ]
then read -p "Prix : $pchocolat centimes          (pour insérer la monnaie, taper sur votre clavier une valeure numérique)
                         " prix
if [ $prix -lt $pchocolat ]
then
dif=$(($pchocolat - $prix))
echo "Je ne peux malheureusement pas vous servir votre chocolat chaud il manque $dif centimes
Au revoir"
exit
elif [ $prix -gt $chocolat ]
then
tp=$(($prix - $pchocolat))
echo Voici votre monnaie : $tp centimes
sleep 1
echo "Voici votre chocolat chaud"
elif [ $prix = $pchocolat ]
then echo "Voici votre chocolat chaud"
fi

sleep 2
clear

elif [ $rep = "potage" ]
then read -p "Prix : 40 centimes          (pour insérer la monnaie, taper sur votre clavier une valeure numérique)
                         " prix
if [ $prix -lt $ppotage ]
then
dif=$(($ppotage - $prix))
echo "Je ne peux malheureusement pas vous servir votre potage il manque $dif centimes
Au revoir"
exit
elif [ $prix -gt $ppotage ]
then
tp=$(($prix - $ppotage))
echo Voici votre monnaie : $tp centimes
sleep 1
echo "Voici votre potage"
elif [ $prix = $ppotage ]
then echo "Voici votre potage"
fi

sleep 2
clear

fi
sleep 1
echo "Merci d'avoir pris un $rep et à bientôt





