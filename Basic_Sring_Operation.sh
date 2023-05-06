#!/bin/zsh

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."

#Change 1: Replace the first occurrence of 'snow' with 'foot'.
ISAY=$BUFFETT
ISAY=${BUFFETT[@]/snow/foot}

#Change 2: Replace all occurences of 'snow' by 'foot'
ISAY=${ISAY[@]//snow/foot}

#Change 3: Replace finding by getting
ISAY=${ISAY[@]/finding/getting}

#Change4: delete all characters following 'wet'. 
#Search index of first w
SUBWET=`expr index "$ISAY" 'w'`
#Extract substring of length $LEN from $STRING starting after position $POS. Note that first position is 0.
ISAY=${ISAY:0:SUBWET+2}









# Test code - do not modify
echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo $ISAY
