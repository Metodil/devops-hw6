#!/bin/bash

echo "Install Grafana"
cp /vagrant/prometheus/docker-compose-prometheus-alertmanager.yml .
docker compose -f docker-compose-prometheus-alertmanager.yml up -d

echo "* Adjust the firewall"
firewall-cmd --permanent --add-port=9090/tcp
firewall-cmd --permanent --add-port=9100/tcp
firewall-cmd --permanent --add-port=9093/tcp
firewall-cmd --reload
