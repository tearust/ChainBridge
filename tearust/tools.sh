#!/bin/bash

if [ $1 == "docker" ]; then
    cp -r ../build .
    docker build -t tearust/chainbridge .
else
    echo "unknown command, supported: docker"
fi