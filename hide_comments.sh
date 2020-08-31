#!/bin/bash


# This bash script will remove all commented lines or any lines that start
# with a new line character (preceded by 0 or more whitespaces).
# A whitespace in this script is defined as: [ \r\t\f]
#
# This script is great mostly for config files where you want to remove all the "fluff" and see only
# what the config file is implementing. Side note, the bash script just invokes a Perl one-liner.
#
# The file can be passed to it as an argument:
#
# ./hideComments.sh  /etc/ssh/sshd_config
#
# or PIPED to it:
#
# cat /etc/ssh/sshd_config |   ./hideComments.sh


# A whitespace in this script is defined as: [ \r\t\f]
/usr/bin/perl -ne  ' unless ( /^[ \r\t\f]*#|;/ || /^[ \r\t\f]*\n/) { 

#color-code common "section bracket line"
# i.e. hc /etc/samba/smb.conf
if ( /^\[/ ){ 
 print   "\033[0;32m$_\033[0m" 
}

else {
 print   "$_" 
}


} ' $1

