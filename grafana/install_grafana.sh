#!/bin/bash

echo "Set Grafana vars"
#export GF_DEFAULT_INSTANCE_NAME=DevOpsLab
#export GF_SECURITY_ADMIN_USER=meto
#export GF_SECURITY_ADMIN_PASSWORD=Password1
#export GF_PLUGIN_GRAFANA_IMAGE_RENDERER_RENDERING_IGNORE_HTTPS_ERRORS=true
#export GF_FEATURE_TOGGLES_ENABLE=newNavigation


echo "Install Grafana"
cp /vagrant/docker-compose-grafana.yml .
docker compose -f docker-compose-grafana.yml up -d

echo "* Adjust the firewall for Grafana"
firewall-cmd --permanent --add-port=3000/tcp
firewall-cmd --reload

