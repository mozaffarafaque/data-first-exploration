#!/bin/bash

set -e

if [ $# -lt  1 ]
then
    echo "Needs at least service name ...."
    exit 1
fi

SERVICE=$1
APP_IMAGE_TAG=20220402.1
APP_IMAGE=${SERVICE}:${APP_IMAGE_TAG}

docker build -t ${APP_IMAGE}  -f dockerfiles/$1 .

if [ $# -eq  2 ]
then
    if [ $2 = "push" ]
    then
        echo "Pushing images...."
        docker tag ${APP_IMAGE} mozafaq/${APP_IMAGE}
        docker push mozafaq/${APP_IMAGE}
    fi
fi

echo "Done...."
