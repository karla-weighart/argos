#!/usr/bin/env bash

FARBEN=("eicheln" "gruen" "rot" "schellen")
ZAHLEN=("7" "8" "9" "10" "unter" "ober" "koenig" "as")
DIR="lilith"

mkdir -p $DIR

for f in ${FARBEN[@]}; do
    for z in ${ZAHLEN[@]}; do
        URL="https://www.lilith-kartenlegen.de/schafkopf/karten/$f$z.jpg"
        wget $URL -O $DIR/$f$z.jpg
    done
done
