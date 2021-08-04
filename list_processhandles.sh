#!/bin/sh

# Show open handles - if any - for a particular file.
#
# ./list_processhandles.sh /etc/samba/smb.conf

echo "******************************************"
echo "*"
echo -n "* Parameter passed in: "
echo $1
echo "*"
echo "******************************************"

export MYFILE=$1

ps -p $(fuser $MYFILE 2> /dev/null  | tr -s ' ' | sed -e 's/ /,/g' -e 's/^,//') -f
