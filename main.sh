#!/bin/bash

#importando el Plugin para generar un arrow key
source plugs/select-arrow.sh

#Creando el menú principal

cat assets/banner.txt

echo ""
echo "    Alumno : Alan Yanse"
echo "Asignatura : Entorno de la Programación"
echo "             TUIA UNR 2022"
echo ""


# Validación argumentos ... cantidad de argumentos permitidos = 1, el cual debe ser el archivo de texto para analizar


# Crear una sub-presentación en la cual dice algo así como: "El archivo que se va a analizar es ..."


options=("statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "${array[@]}") # join arrays to add some variable array

case `select_opt "${options[@]}"` in
    0) OPTION="selected Yes";;
    1) OPTION="selected No";;
    *) OPTION="selected ${options[$?]}";;
esac



echo $OPTION




