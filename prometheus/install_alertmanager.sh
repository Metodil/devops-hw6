#!/bin/bash

echo "Install prometeus as container"
wget https://github.com/prometheus/alertmanager/releases/download/v0.25.0/alertmanager-0.25.0.linux-amd64.tar.gz
tar xzvf alertmanager-0.25.0.linux-amd64.tar.gz
cd alertmanager-0.25.0.linux-amd64/
./alertmanager &> /tmp/am.log &
systemctl restart prometheus
