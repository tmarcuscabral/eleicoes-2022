#!/bin/bash

cat votacao_secao_2022_BR.csv | awk -F';' '$6 ~ /1/' | awk -F';' '$20 ~ /13/ { print $22 }' | sed 's/\"//g' > votos_13_1
cat votacao_secao_2022_BR.csv | awk -F';' '$6 ~ /1/' | awk -F';' '$20 ~ /22/ { print $22 }' | sed 's/\"//g' > votos_22_1
cat votacao_secao_2022_BR.csv | awk -F';' '$6 ~ /2/' | awk -F';' '$20 ~ /13/ { print $22 }' | sed 's/\"//g' > votos_13_2
cat votacao_secao_2022_BR.csv | awk -F';' '$6 ~ /2/' | awk -F';' '$20 ~ /22/ { print $22 }' | sed 's/\"//g' > votos_22_2

RESULTADO=0
while read -r line;
do
    RESULTADO=$((RESULTADO + line));
done < votos_13_1
echo "Total de votos 13 primeiro turno: $RESULTADO"

RESULTADO=0
while read -r line;
do
    RESULTADO=$((RESULTADO + line));
done < votos_13_2
echo "Total de votos 13 segundo turno: $RESULTADO"

RESULTADO=0
while read -r line;
do
    RESULTADO=$((RESULTADO + line));
done < votos_22_1
echo "Total de votos 22 primeiro turno: $RESULTADO"

RESULTADO=0
while read -r line;
do
    RESULTADO=$((RESULTADO + line));
done < votos_22_2
echo "Total de votos 22 segundo turno: $RESULTADO"

rm -f votos_13_1 votos_13_2 votos_22_1 votos_22_2
