#!/bin/sh -l
mkdir $DOCKER_CERT_PATH
echo "$DOCKER_TLS_KEY" | base64 -d > $HOME/.docker/key.pem
echo "$DOCKER_TLS_CA" | base64 -d > $HOME/.docker/ca.pem
echo "$DOCKER_TLS_CERT" | base64 -d > $HOME/.docker/cert.pem
sh -c "docker $*"
