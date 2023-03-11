#!/bin/bash

echo "* Add docker metrics"
cp /vagrant/docker_daemon.json /etc/docker/daemon.json
systemctl restart docker
