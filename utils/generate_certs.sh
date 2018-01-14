#!/bin/bash

execute_folder=$(pwd)
if [[ ! "$execute_folder" == *utils ]]
then
    echo "This script must be run from the utils folder"
    exit 1
else
    mkdir ../certs
fi


echo "Generating portus certificate"
openssl req -x509 -newkey rsa:4096 -keyout ../certs/portus.key -out ../certs/portus.crt -days 365

echo "Genrating registry certificate"
openssl req -x509 -newkey rsa:4096 -keyout ../certs/registry.key -out ../certs/registry.crt -days 365

