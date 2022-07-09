#!/bin/bash
# Array

a=()                       # empty array
b=("apel" "pisang" "ceri") # array 3 variabel
#   [0]     [1]     [2]    zero base index
echo ${b[2]}               # return ceri
b[5]="kiwi"                # nambahin langsung
b+=("mangga")              # memasukkan paling belakang
echo ${b[@]}               # panggil semua
echo ${b[@]: -2}           # manggil paling belakang (2 dari belakang)


# use declare
declare -A myarray
myarray[color]=blue
myarray["office building"]="HQ West"

echo ${myarray["office building"]} is ${myarray[color]}