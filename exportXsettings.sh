#!/bin/sh

echo "export DISPLAY=$DISPLAY" | tee /tmp/Xsetup.sh

xauth list | awk ' {print "xauth add " $0} ' | tee -a /tmp/Xsetup.sh

chmod 644 /tmp/Xsetup.sh
