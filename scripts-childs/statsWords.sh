#!/bin/bash


# Hallar en un archivo , la palabra mas larga, la mas corta y el promedio de longitud
# statsWords


# ------------------------------------- ZONA DE FUNCIONES ------------------------------------------------

function cant_words(){

    # Obtiene la cantidad de palabras de un archivo

    wc -w $1 | awk '{print $1}'
}

WORDS=`cant_words $1`


#echo "la cantidad de palabras que tiene el archivo es: $WORDS"


function char_counter(){

  #Recibe un archivo como parámetro y retorna la cantidad de caracteres sin contar los esoacios en blanco

  CADENA=`cat $1 | tr -d '[[:space:]]'`

  echo -n ${#CADENA}

}

CHARACTERS=`char_counter $1`



#echo "la cantidad de caracteres que tiene el archivo es: $CHARACTERS"



function len_promedio(){

    PROMEDIO=$((CHARACTERS/WORDS))

    echo $PROMEDIO
}



function listar_words(){

    # Lista las palabras que aparecen en el archivo

    for((i=1; i<=$WORDS; i++))
    do
        echo `cat $1 | cut -d " " -f $i`
    
    done


}


#listar_words $1




# ------------------------------------- ZONA DE ESTADÍSTICAS ------------------------------------------------


MENOR_WORD=`listar_words $1 | awk '{print length, $0}' | sort -n -s | cut -d " " -f2- | head -1`


echo "La palabra más corta es: $MENOR_WORD"

 
MAYOR_WORD=`listar_words $1 | awk '{print length, $0}' | sort -n -s | cut -d " " -f2- | tail -1`


echo "La palabra más larga es: $MAYOR_WORD"


PROMEDIO_LEN=`len_promedio`

echo "El promedio de longitud de palabras es: $PROMEDIO_LEN"























#... fin ...



