#!/bin/bash

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
# write your code here
ISAY=$BUFFETT
#Change1
Change1=${ISAY[@]/snow/foot}
#Change2
Change2=${ISAY[@]// snow/}
#Change3
Change3=${ISAY[@]/finding/getting}
#Change4
ISAY=${Change3::59}








# Test code - do not modify
echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo $ISAY