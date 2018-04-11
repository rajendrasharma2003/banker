#!/usr/bin/env bash
if [ -f Dockerfile ]
then
    echo Docker file exists
    sudo docker build -t webapp-frontend:4.6 .
else
    echo docker file does not exist
fi
