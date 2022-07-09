#!/bin/bash
# function


function greet {
 echo "hi, $1! What a nice $2!"              # $1 mewakili yang pertama
}

echo "And now, a greeting!"
greet Scoot Morning
greet Everybody Evening

function numberthings {
  i=1
  for f in $@; do
    echo $i: $f
    ((i+=1))
  done
}

numberthings $(ls)

numberthings pine birch maple spruce