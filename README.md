
## Script: `list_processhandles.sh`
Show open handles - if any - for a particular file.

> ./list_processhandles.sh /etc/samba/smb.conf

## Script: `hide_comments.sh`
Remove all lines from a file that are comments or empty lines.

A comment begins with either a '#' or ';'

Examples:

>  ./hideComments.sh /etc/ssh/sshd_config

>  ./hideComments.sh /etc/samba/smb.conf

Or:

> cat /etc/ssh/sshd_config | ./hideComments.sh

> cat /etc/samba/smb.conf | ./hideComments.sh

## Script `exportXsettings.sh`

Using X11 tunneling with SSH is a very powerful, convenient, and secure mechanism.

However, some *Nix (Unix and Linux) platforms do not carry the:
 
1. $DISPLAY variable and 
2. 'xauth list' entries 

from the initial SSH logon user to any users you 'su' to.

This script will save your *$DISPLAY* variable and all *'xauth list'* entries into temporary script file: /tmp/Xsetup.sh

This temporary script file can be ran as any user you 'su' to if X11 tunneling is not working (but did work with the initial SSH logon user).

This script can be ran as:

sh /tmp/Xsetup.sh

or with DOT SOURCE notation if need be:

. /tmp/Xsetup.sh

This helps semi-automate an otherwise tedious task.
