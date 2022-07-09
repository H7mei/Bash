#!/bin/bash
# option parameter

while getopts u:p:ab option; do
  case $option in
    u) user=$OPTARG;;
    p) pass=$OPTARG;;
    a) echo "Got the A flag";;
    b) echo "Got the B flag";;
  esac
done

echo "User : $user | Pass: $pass"

echo "What is yout name?"
read name

echo "What is your password?"
read -s pass                   # secret

read -p "What your favorite animal? " animal

echo name: $name, pass: $pass, animal: $animal

# select
select animal in "cat" "dog" "bird" "fish"
do
  echo "You selected $animal!"
  break
done

select option in "cat" "dog" "quit"
do
  case $option in
    cat) echo "Cats like to sleep.";;
    dog) echo "Dogs like to play catch";;
    quit) break;;
    *) echo "I'm not sure what that is.";;
  esac
done
