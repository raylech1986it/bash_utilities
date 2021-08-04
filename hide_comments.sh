#!/bin/bash

# This script will remove all lines that are:
#
# - Comments ('#' or ';')
# - Empty lines
#
# This script helps troubleshoot config files.
#
# Sometimes you want to know what the config file settings are and
# you don't care about any comments.
#
# This script invokes a Perl One-liner.
#
# A file can be passed to it as an argument or piped to it.
#
# Two examples:
#
# File name passed as an argument:
#
#   ./hideComments.sh /etc/ssh/sshd_config
#   ./hideComments.sh /etc/samba/smb.conf
#
# File piped to it:
#
#   cat /etc/ssh/sshd_config | ./hideComments.sh
#   cat /etc/samba/smb.conf | ./hideComments.sh

/usr/bin/perl -ne  'print unless /^(#|;|\n)/ ' $1

