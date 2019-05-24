#!/bin/bash
HOST="185.81.4.99"
USER="kanimafi"
PASS="Ninorucola1"
TARGETFOLDER="public_html"
SOURCEFOLDER="/home/turnerm/webdevel/kanimambo/"

lftp -f "
open $HOST
user $USER $PASS
lcd $SOURCEFOLDER
mirror -x ^\.git/$ --verbose $SOURCEFOLDER $TARGETFOLDER
bye
"
