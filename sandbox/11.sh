#!/bin/bash
# if statment

# if expression then
#   echo "True"
# elif expression2; then
#   echo "False"
# else
# fi

a=5
if [ $a -gt 4 ]; then
  echo $a is greater than 4!
else
  echo $a is not greater than 4!
fi

# mendeteksi apakah ada nomer di string
a="This is my string!"
if [[ $a =~ [0-9]+ ]]; then
  echo "There are numbers in the string: $a"
else
  echo "There are no numbers in the string: $a"
fi