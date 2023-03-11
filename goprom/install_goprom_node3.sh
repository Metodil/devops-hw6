#!/bin/bash

echo "* Add Docker repository"
docker container run -d --name worker1 -p 8081:8080 shekeriev/goprom 

echo "Run simulating app"
chmod -R 755 /tmp
chmod +x /vagrant/goprom/runner.sh
/vagrant/goprom/runner.sh http://192.168.99.103:8081 &> /tmp/runner8081.log &

