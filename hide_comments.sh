#!/usr/bin/bash

# This bash script will remove all commented lines or any lines that start
# with a new line character (preceded by 0 or more whitespaces).
# A whitespace in this script is defined as: [ \r\t\f]
#
# This script is great mostly for config files where you want to remove all the "fluff" and see only
# what the config file is implementing. Side note, the bash script just invokes a Perl one-liner.
#
# Usages:
#
# ./hideComments.sh  /etc/ssh/sshd_config
# cat /etc/ssh/sshd_config |   ./hideComments.sh
#
# A whitespace in this script is defined as: [ \r\t\f]
#

if [ "$#" -eq 0 ]; then
    set -- /dev/stdin
    /usr/bin/perl -ne 'unless ( /^[ \r\t\f]*#|;/ || /^[ \r\t\f]*\n/) { print $_ } '

elif [ "$1" == "-h" ]; then

cat <<EOF
###########
#         #
# Usages: #
#         #
###########

./hideComments.sh  /etc/ssh/sshd_config
cat /etc/ssh/sshd_config | ./hideComments.sh

EOF

else
   /usr/bin/perl -ne 'unless ( /^[ \r\t\f]*#|;/ || /^[ \r\t\f]*\n/) { print $_ } ' $1
fi

