#!/bin/bash
# Aritmatic operations

# a=$((expresion))
# Operation

# Pangkat     | $a ** $b
# Perkalian   | $a * $b
# Pembagian   | $a / $b
# Modulo      | $a % $b
# Pertambahan | $a + $b
# Pengurangan | $a - $b

d=2
e=$((d+2))
echo $e
((e++))
echo $e 
((e--)) 
echo $e 
echo $((e+=5)) +=
echo $((e*=3)) *=
echo $((e/=3)) /=
echo $((e-=5)) -=

# bc kalkulator 
f=$((1/3))
echo $f

read l
read h
read b

g=$(echo $l$h$b | bc -l)
echo $g


