#!/bin/bash

git clone https://github.com/oefrager/shvirtd-example-python.git
cd shvirtd-example-python
ls -l
docker compose up -d
docker ps
