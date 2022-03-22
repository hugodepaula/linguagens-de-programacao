#!/bin/bash

area[13]=10
area[28]=20
area[32]=TEXTUAL

echo "area[13] = ${area[13]}"
echo "area[28] = ${area[28]}"
echo "Conteúdo de area[32] é ${area[32]}."


echo -n "area[46] = "
echo ${area[46]}         # não imprime nada

echo "Imprimindo: "

for i in "${area[@]}"; do 
   echo -n "${i}, " 
done   






