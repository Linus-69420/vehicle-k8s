#!/usr/bin/env bash

mvn -B package
cp src/main/docker/Dockerfile target/

docker build --tag ghcr.io/$GITHUB_ACTOR/backend:latest ./target
docker push ghcr.io/$GITHUB_ACTOR/backend:latest