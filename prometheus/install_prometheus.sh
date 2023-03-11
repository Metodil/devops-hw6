#!/bin/bash

echo "Install prometeus as container"
docker rm -f prometheus
docker run -d --name=prometheus -p 9090:9090 -v /vagrant/prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus --config.file=/etc/prometheus/prometheus.yml
mkdir -p /etc/prometheus/rules
cp /vagrant/prometheus/rules/*.yml /etc/prometheus/rules
chown -R prometheus:prometheus /etc/prometheus/rules
promtool check rules /etc/prometheus/rules/*.yml
systemctl restart prometheus
