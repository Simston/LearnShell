	#!/bin/bash
	# enter your array comparison code here

ARRAYA=(3 5 8 10 6)
ARRAYB=(6 5 4 12) 
ARRAYC=(14 7 5)
SAMEVALUEARRAYAB=()
SAMEVALUEARRAYABC=()
POSAB=0
POSABC=0

for NA in ${ARRAYA[@]}; do
	
   
    for NB in ${ARRAYB[@]}; do
    
        if [ $NA -eq $NB ]; then
        
        SAMEVALUEARRAYAB[POSAB]=$NA
        POSAB=$POSAB+1
            
        fi
    done  
done
#echo "${SAMEVALUEARRAYAB[@]}"

for NC in ${ARRAYC[@]}; do
        	
    for SV in ${SAMEVALUEARRAYAB[@]}; do
    
        if [ $NC -eq $SV ]; then
        
        SAMEVALUEARRAYABC[POSABC]=$NC
        POSABC=$POSABC+1

        fi
    done
done  

echo "${SAMEVALUEARRAYABC[@]}"


