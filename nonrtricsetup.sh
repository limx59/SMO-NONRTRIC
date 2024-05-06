#!/bin/sh

sudo docker-compose --env-file .env -f docker-compose.yaml -f control-panel/docker-compose.yaml -f nonrtric-gateway/docker-compose.yaml -f policy-service/docker-compose.yaml -f ics/docker-compose.yaml -f a1-sim/docker-compose.yaml up -d
