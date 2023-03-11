#!/bin/bash

echo "Install Prometheus Alertmanager Node Export"
cp /vagrant/prometheus/docker-compose-prometheus-alertmanager.yml .
docker compose -f docker-compose-prometheus-alertmanager.yml up -d

echo "* Adjust the firewall"
firewall-cmd --permanent --add-port=9093/tcp
firewall-cmd --reload
