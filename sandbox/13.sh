#!/bin/bash
# case

a="anjing"
case $a in
  cat|kucing) echo "Feline";;
  dog|puppy|anjing) echo "Canine";;
  *) echo "No match!"
esac