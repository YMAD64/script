function demandeBoisson() {
   
    read -p "Quelle boisson desirez-vous ? " boisson

    until [[ $boisson = café || $boisson = thé || $boisson = chocolat || $boisson = potage ]]
    do read -p "Quelle boisson desirez-vous ?
    Je propose :
    - café
    - thé 
    - chocolat
    - potage  " boisson
    done
    
    if [ $boisson = café ]
    then prx=40 
    elif [ $boisson = thé ]
    then prx=35 
    elif [ $boisson = chocolat ]
    then prx=50 
    elif [ $boisson = potage ]
    then prx=45
    fi


}
