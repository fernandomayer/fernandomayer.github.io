#!/bin/sh

USER=fernandomayer
HOST=leg.ufpr.br
DIR=public_html/
read -p 'PORTA: ' PORT

Rscript -e 'source("build.R");build()' && hugo && rsync -avz -e "ssh -p $PORT" --delete --exclude-from 'rsync-exclude.txt' docs/ ${USER}@${HOST}:~/${DIR}

exit 0
