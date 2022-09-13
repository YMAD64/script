function servir() {

read -p "Prix : $prx centimes (pour insérer la monnaie, taper sur votre clavier une valeure numérique)
                         " prix
if [ $prix -lt $prx ] 
then
dif=$(($prx - $prix)) 
echo "Je ne peux malheureusement pas vous servir votre $boisson il manque $dif centimes
Au revoir"
exit
elif [ $prix -gt $prx ]
then
tp=$(($prix - $prx ))
echo Voici votre monnaie : $tp centimes
sleep 1
echo "Voici votre $boisson" 
elif [ $prix = $prx ] 
then echo "Voici votre $boisson"
fi


}