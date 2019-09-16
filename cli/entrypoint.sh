#!/bin/sh -l
mkdir -p $DOCKER_CERT_PATH
echo "$DOCKER_TLS_KEY" | base64 -d > $DOCKER_CERT_PATH/.docker/key.pem
echo "$DOCKER_TLS_CA" | base64 -d > $DOCKER_CERT_PATH/.docker/ca.pem
echo "$DOCKER_TLS_CERT" | base64 -d > $DOCKER_CERT_PATH/.docker/cert.pem
sh -c "docker $*"
