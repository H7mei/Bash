#!/bin/bash
# File

echo "Some text" > file.txt       #bikin
echo "Some more text" >> file.txt #nambah

i=1
while read f; do
     echo "Line $i: $f" 
     ((i++))
done < file.txt
  
sleep 3

cat < file.txt

rm file.txt