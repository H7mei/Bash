#!/bin/bash
# Date

# date +"%d-%m-%Y"
# day - mount - year
# date +"%H-%M-%S"
# hours - minute - second

# more "man date"

today=$(date +"%d-%m-%Y")
time=$(date +"%H-%M-%S")
printf -v d "Current User\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
echo "$d"

# more http://wiki.bash-hackers.org/commands/builtin/printf