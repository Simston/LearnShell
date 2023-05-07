#!/bin/zsh

# Change this code
BIRTHDATE="Jan 1, 2000"
PRESENTS=10
#'date' command can be used to convert a date format into a different date format
BIRTHDAY=$(date -d "$BIRTHDATE" +%A)

#change day if in french langage by english
if [ $BIRTHDAY = "samedi" ]; then
    BIRTHDAY="Saturday"
fi

# Testing code - do not change it

if [ "$BIRTHDATE" = "Jan 1, 2000" ] ; then
    echo "BIRTHDATE is correct, it is '$BIRTHDATE'"
else
    echo "BIRTHDATE is incorrect - please retry"
fi
if [ "$PRESENTS" = 10 ] ; then
    echo "I have received '$PRESENTS' presents"
else
    echo "Presents is incorrect - please retry"
fi
if [ "$BIRTHDAY" = "Saturday" ] ; then
    echo "I was born on a '$BIRTHDAY'"
else
    echo "BIRTHDAY is incorrect - please retry"
fi