#!/bin/bash

# This script will remove all commented lines or any lines that start
# with a new line character (preceded by 0 or more whitespaces).
#
# A whitespace in this script is defined as: [ \r\t\f]
#
# This script is mostly for config files where you want to remove all the "fluff" and see only
# the "effective" settings. 
#
# This script basically invokes a Perl one-liner.
#
# A file can be passed to it as an argument:
#
# ./hideComments.sh  /etc/ssh/sshd_config
#
# or PIPED to it:
#
# cat /etc/ssh/sshd_config |   ./hideComments.sh


# A whitespace in this script is defined as: [ \r\t\f]
/usr/bin/perl -ne  ' unless ( /^[ \r\t\f]*# || /^[ \r\t\f]*\n/) { 

 print   "$_" 

} ' $1

