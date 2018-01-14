#!/bin/bash

git clone https://github.com/openSUSE/docker-containers

cd ./docker-containers/derived_images/portus/
docker build -t portus-git .
