#!/bin/bash -x

fruits[0]="Apple"
fruits[1]="Banana"
fruits[2]="Orange"
fruits[3]="Kiwi"

echo ${fruits[2]}

counterer=0
fruits[((counter++))]="Apple1"
fruits[((counter++))]="Banana1"
fruits[((counter++))]="Orange1"
fruits[((counter++))]="Kiwi1"

echo ${fruits[@]}


