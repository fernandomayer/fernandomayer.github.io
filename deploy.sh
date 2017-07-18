#!/bin/sh

USER=fernandomayer
HOST=leg.ufpr.br
DIR=public_html/

hugo && rsync -avz --delete docs/ ${USER}@${HOST}:~/${DIR}

exit 0
