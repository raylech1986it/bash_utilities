#!/bin/bash

# This script will remove all commented lines from a file.
#
# A useful troubleshooting trick when you need to remove the "noise" from 
# a config file and only read the effective settings.
#
# A comment is defined as a line that begins with either of the following
# characters:
#
# - '#'
# - ';'
# - Empty line, "^\n"

if [ $1 = "-h" ]; then
cat <<EOF
Command usage:

sh ./hideComments.sh /etc/ssh/sshd_config
cat /etc/samba/smb.conf | ./hideComments.sh
sh ./hideComments.sh -h # this help page

EOF
return 0
fi

/usr/bin/perl -ne  'print unless /^(#|;|\n)/ ' $1
