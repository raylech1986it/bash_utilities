#!/usr/bin/sh

# 
# This script will assume the process ID (PID) provided as the root
# and display its information with the command 'ps'.
#
# Plus, all of its child processes.
#
# Ways to use this command:
#
# sh ./ps_tree.sh <PID>
# ./ps_tree.sh <PID>
#

ROOT_PID=$1

ps -f -p $(pstree $ROOT_PID -c -Ap | grep -o -E "[0-9]+")
