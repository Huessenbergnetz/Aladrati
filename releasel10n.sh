#!/bin/bash

lrelease-qt5 -idbased translations/aladrati.ts

for LANG in de
do
lrelease-qt5 -idbased translations/aladrati_$LANG.ts
done

