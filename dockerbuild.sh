#!/usr/bin/env bash

docker build -t slt-nginx:v1 .
docker tag slt-nginx:v1 farukh/slt-nginx:0.0.1
docker push farukh/slt-nginx:0.0.1
