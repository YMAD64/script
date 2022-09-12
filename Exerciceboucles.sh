#!bin/bash

#read -p 'Tapez un nombre : ' nbr

#while [ $nbr -gt 0 ]
#do echo $nbr
#sleep 1
#(( nbr-- ))
#done


#until [ $nbr -le 0 ]
#do
#echo $nbr
#(( nbr-- ))
#done

noms='Pierre Paul Jack annuler'

#for nom in $noms
#do
 # if [ $nom = Paul ]
  #then
   #continue
#break
#fi
#echo $nom
#done

#cho fini !
PS3='Choisissez un nom : '
select nom in $noms
do
if [ $nom = annuler ]
then break
fi
echo $nom
done

