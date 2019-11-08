#!/bin/bash

# from: https://www.commandlinefu.com/commands/view/12470/statistic-of-the-frequnce-of-your-command-from-your-history
history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10
