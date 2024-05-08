#!/bin/sh

# sudo docker compose --env-file .env -f docker-compose.yaml -f control-panel/docker-compose.yaml -f nonrtric-gateway/docker-compose.yaml -f policy-service/docker-compose.yaml -f ics/docker-compose.yaml -f a1-sim/docker-compose.yaml up -d

sudo docker compose --env-file .env -f docker-compose.yaml -f control-panel/docker-compose.yaml -f nonrtric-gateway/docker-compose.yaml -f policy-service/docker-compose.yaml -f ics/docker-compose.yaml -f a1-sim/docker-compose.yaml -f dmaap-mediator-go/docker-compose.yaml -f dmaap-mediator-java/docker-compose.yaml -f mr/docker-compose.yml -f rapp/docker-compose.yaml  -f sdnc/docker-compose.yml up -d
cd docker-compose-policy-framework
chmod +x wait_for_port.sh
sudo docker compose up -d