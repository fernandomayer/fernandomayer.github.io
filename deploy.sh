#!/bin/sh

USER=fernandomayer
HOST=leg.ufpr.br
DIR=public_html/
read -p 'PORTA: ' PORT

hugo && rsync -avz -e "ssh -p $PORT" --delete --exclude-from 'rsync-exclude.txt' public/ ${USER}@${HOST}:~/${DIR}

exit 0
