#!/bin/sh -l
mkdir -p /asdf/.docker
export DOCKER_CERT_PATH=/asdf/.docker
echo "$DOCKER_TLS_KEY" | base64 -d > /asdf/.docker/key.pem
echo "$DOCKER_TLS_CA" | base64 -d > /asdf/.docker/ca.pem
echo "$DOCKER_TLS_CERT" | base64 -d > /asdf/.docker/cert.pem
sh -c "docker $*"
