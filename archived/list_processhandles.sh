#!/bin/sh

if [ $1 = "-h" ]; then

cat <<EOF

Show any open handles for a particular file.

Command usage:

sh  ./list_processhandles.sh <FILEPATH>
./ps_tree.sh <FILEPATH>

EOF
return 0
fi

echo "******************************************"
echo "*"
echo -n "* Parameter passed in: "
echo $1
echo "*"
echo "******************************************"

export MYFILE=$1

ps -p $(fuser $MYFILE 2> /dev/null  | tr -s ' ' | sed -e 's/ /,/g' -e 's/^,//') -f
