#!/bin/sh

echo "export DISPLAY=$DISPLAY" | tee /tmp/Xsetup.sh

xauth list | awk ' {print "xauth add " $0} ' | tee -a /tmp/Xsetup.sh

chmod 644 /tmp/Xsetup.sh


###
### Below is the archived markdown information from README.md
###





# ## Script `exportXsettings.sh`

# Using X11 tunneling with SSH is a very powerful, convenient, and secure mechanism.

# However, some *Nix (Unix and Linux) platforms do not carry the:
 
# 1. $DISPLAY variable and 
# 2. 'xauth list' entries 

# from the initial SSH logon user to any users you 'su' to.

# This script will save your *$DISPLAY* variable and all *'xauth list'* entries into temporary script file: /tmp/Xsetup.sh

# This temporary script file can be ran as any user you 'su' to if X11 tunneling is not working (but did work with the initial SSH logon user).

# This script can be ran as:
# ```
# sh /tmp/Xsetup.sh
# ```
# or with DOT SOURCE notation if need be:
# ```
# . /tmp/Xsetup.sh
# ```
# This helps semi-automate an otherwise tedious task.