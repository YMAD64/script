#!/bin/bash

echo "Quel dossier souhaitez-vous archiver ? "
read -p "Chemin du dossier : " folderpath
read -p "Nom de l'archive : " archivename
read -p "Où voulez-vous mettre l'archive ? " archivepath

echo "Chemin du dossier : $folderpath"
echo "Nom de l'archive : $archivename"
echo "Chemin de l'archive : achivepath"

select answer in oui non
do
if [ $answer = oui ]
then file="$archivepath/$archivename"
tar -czf $file $forlderpath
if [ $? -eq 0 ]
then echo "done"
break
else echo "ERRROR !!!"
break
fi

else echo "Bye !"
break
fi





done
