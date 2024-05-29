#!/usr/bin/sh

# 
# This script will assume the process ID (PID) provided as the root
# PID and will display its information.
#
# Along with all of its decendants and hierarchy (-H)
#
#
# Ways to use this command:
#
# sh ./ps_tree.sh <PID>
# ./ps_tree.sh <PID>
#

ROOT_PID=$1

ps -f -H -p $(pstree $ROOT_PID -c -Ap | grep -o -E "[0-9]+")
