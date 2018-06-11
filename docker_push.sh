#!/bin/bash
echo "$DOCKER_PASS" | docker login -u $DOCKER_USER --password-stdin
docker build -t georgiivanov/kubernetes_jump_pod:latest .
docker push georgiivanov/kubernetes_jump_pod:latest
docker logout