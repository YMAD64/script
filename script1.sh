#!bin/bash

mavar="Hello world"

echo ma variable : $mavar
echo variable nbr de chars : ${#mavar}
echo  mes arguments : $1 $2 $3
echo nom du script : $0
echo nombre darguments : $#
echo tous les arguments : $@
echo retour dernier processus : $?
echo pid script : $$
echo qui? : $USER
echo machine : $HOSTNAME
echo random : $RANDOM
echo ligne : $LINENO 

echo "je suis le contenu de mavar : $mavar"
echo 'je suis le contenu de mavar : $mavar'
echo "je suis le contrnu de mavar : \$mavar"

