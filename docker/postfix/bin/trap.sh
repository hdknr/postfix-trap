#!/bin/bash
HOME=/usr/src/app
TO=$2
#
SUB=$(date +'%m-%d-%H')
MAILS=$HOME/mails/$SUB
if [ ! -d $MAILS ]; then mkdir -p $MAILS ; fi
FILE=$MAILS/$(date +'%m%d%H%M%S'.$$)
cat > $FILE.$TO.eml