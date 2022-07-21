#!/bin/bash


# Hallar en un archivo , la palabra mas larga, la mas corta y el promedio de longitud
# statsWords


# ----- ZONA DE FUNCIONES -----

function cant_words(){

    # Obtiene la cantidad de palabras de un archivo

    wc -w $1 | awk '{print $1}'
}

WORDS=`cant_words $1`


echo "la cantidad de palabras que tiene el archivo es: $WORDS"


function cant_characters(){

    # Obtiene la cantidad de caracteres de un archivo

    wc -m $1 | awk '{print $1}'
}


CHARACTERS=`cant_characters $1`


echo "la cantidad de caracteres que tiene el archivo es: $CHARACTERS"





