#!/bin/bash

rvm use 3.3.0

echo "Checkout files"
git checkout .
git clean -fd

echo "Pull"
git checkout master
git pull

echo "Run start.sh"
chmod +x ./start.sh
./start.sh

