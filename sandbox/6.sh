#!/bin/bash
# styled bash

#              (st)(fr)(bg)(text)
# echo -e '\033[5:34;42mColor Text\033[0m'
# -e escaping

# Colored text (ANSI)
# Warna   |Foreground|Background|
# Black   |    30    |    40    |
# Red     |    31    |    41    |
# Green   |    32    |    42    |
# Yellow  |    33    |    43    |
# Blue    |    34    |    44    |
# Magenta |    35    |    45    |
# Cyan    |    36    |    46    |
# White   |    37    |    47    |

# example
echo -e '\033[37;40mWhite on Black\033[0m'
echo -e '\033[30;41mBlack on Red\033[0m'
echo -e '\033[32;40mGreen on Black\033[0m'
echo -e '\033[31;47mRed on White\033[0m'
echo -e '\033[34;43mBlue on Yellow\033[0m'

# Syled text (ANSI)
# Style         |Value|
# No Style      |  0  |
# Bold          |  1  |
# Low Intensity |  2  |
# Underline     |  4  |
# Blinking      |  5  |
# Reverse       |  7  |
# Invisible     |  8  |

# example
flashred="\033[5;31;40m"
red="\033[31;40m"
none="\033[0m"
echo -e $flashred"ERROR: "$none$red"Something went wrong."$none

# Syled text (tput)
# Syle         |       Commad     |
# Foreground   | tput setaf [0-7] |
# Background   | tput setab [0-7] |
# No Style     | tput sgv0        |
# Bold         | tput bold        |
# Low Intensity| tput dim         |
# Underline    | tput smul        |
# Blinking     | tput blink       |
# Reverse      | tput rev         |

# Colored text (tput)
# Warna   |Foreground|Background|
# Black   |     0    |     0    |
# Red     |     1    |     1    |
# Green   |     2    |     2    |
# Yellow  |     3    |     3    |
# Blue    |     4    |     4    |
# Magenta |     5    |     5    |
# Cyan    |     6    |     6    |
# White   |     7    |     7    |

# more explain man terminfo

# example
flashred=$(tput setab 0; tput setaf 1; tput blink)
red=$(tput setab 0; tput setaf 1)
none=$(tput sgr0)
echo -e $flashred"ERROR: "$none$red"Something went wrong."$none