#!/bin/bash
# Comparison operations

# [[expresion]]
# retun 1: false 0: true

# bolean operation            string          number     
# Kurang dari             | [[ $a < $b ]]  | [[ $a -lt $b ]] 
# Lebi dari               | [[ $a > $b ]]  | [[ $a -gt $b ]] 
# Kurang dari sama dengan | [[ $a <= $b ]] | [[ $a -le $b ]]
# Lebih dari sama dengan  | [[ $a >= $b ]] | [[ $a -ge $b ]]
# Sama dengan             | [[ $a == $b ]] | [[ $a -eq $b ]]
# Tidak sama dengan       | [[ $a != $b ]] | [[ $a -ne $b ]]

[[ "cat" == "cat" ]]
echo $?

[[ "cat" == "dog" ]]
echo $?

[[ 20 > 100 ]]  # = ini kebaca komputer string
echo $?

[[ 20 -gt 100 ]]
echo $?

# Logic Operation

# AND    | [[ $a && $b ]]
# OR     | [[ $a || $b ]]
# NOT    | [[ ! $a ]]

# Sting null value

# is null?    | [[ -z $a ]]
# isn't null? | [[ -n $a ]]

a=''
b='cat bobs'
[[ -z $a && -n $b ]]
echo $?
echo ${#b} panjang sting

c=${b:3} # menghapus 3 huruf depan
echo $c

c=${b:3:3} # menghapus 3 huruf depan dan 2 huruf belakang (3-1)
echo $c

c=${b: -4} # 4 dari belakang di ambil
echo $c

c=${b: -4:3} # 4 dari belakang lalu ambil 3 depan
echo $c

# replace
buah="apel pisang pisang ceri"
echo ${buah/pisang/durian} # pisang pertama di ganti dengan durian
echo ${buah//pisang/durian} # pisang semua di ganti dengan durian
echo ${buah/#apel/durian} # hanya mengubah yang paling depan
echo ${buah/%pisang/durian} # hanya mengubah yang paling belakang

