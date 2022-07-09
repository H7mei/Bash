#!/bin/bash
# loop

# while
i=0
while [ $i -le 10 ]; do
  echo i:$i 
  ((i+=1))
done

# until 
j=0
until [ $j -ge 10 ]; do 
  echo j:$j
  ((j+=1))
done

# for
myarr=()

for i in {1..200..4}
do 
  myarr+=("$i")
done

for (( i=1; i<=10; i++ ))
do
  echo myarr: ${myarr[$i]}
done

declare -A arr
arr["name"]="JEJE"
arr["id"]="1234"
for i in "${!arr[@]}"
do
  echo "$i: ${arr[$i]}"
done