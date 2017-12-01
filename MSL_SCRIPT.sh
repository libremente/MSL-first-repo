#!/bin/bash
# Script di esempio

# Creo la cartella "provaDir"
MYPATH="/home/surf/Scrivania"
DIRECTORY="provaDir"
FILENAME="provaFile"
FILETEXT="W GNU!"

# Check se non esiste
echo "Controllo l'esistenza della cartella..."
if [ ! -d "$MYPATH/$DIRECTORY" ]; then
    echo "La cartella non esiste, la creo..."
    mkdir -p "$MYPATH/$DIRECTORY"
    if [ $? -eq 0 ]; then
        echo "Creata"
    else
        echo "C'è stato un errore durante la creazione, controlla i permessi" 
    fi
else
    echo "La cartella esiste già!"
fi

# Creo il file
if [ -s "$MYPATH/$DIRECTORY/$FILENAME" ]; then
    echo "Il file esiste già, lo rimuovo"
    rm  "$MYPATH/$DIRECTORY/$FILENAME"
fi
 
echo "Creo il file..."
touch "$MYPATH/$DIRECTORY/$FILENAME"

# Inserisco il testo
echo "Inserisco il testo..."
echo "$FILETEXT" >> "$MYPATH/$DIRECTORY/$FILENAME"

# Display
echo "Visualizzo il testo"
echo "---"
cat "$MYPATH/$DIRECTORY/$FILENAME"
echo "---"

# Fine
echo "Happy hacking!"



    

