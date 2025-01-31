#!/usr/bin/sh

# This script will assume the provided Process ID (PID) as the root process;
# then display its information along with its decendants.
#
# Ways to use this command:
#
# sh ./ps_tree.sh <PID>
# ./ps_tree.sh <PID>


if [ $1 = "-h" ]; then

cat <<EOF

Command usage:

sh ./ps_tree.sh <ROOTPID>
sh ./ps_tree.sh -h # this help page


EOF
return 0
fi


ROOT_PID=$1

ps -f -H -p $(pstree $ROOT_PID -c -Ap | grep -o -E "[0-9]+")
