#!/bin/bash
rvm use 3.3.0

echo "Encerrando Rails Server"
sudo kill -9 `sudo lsof -t -i:3030`

sudo chown -R $USER tmp
sudo chown -R $USER public

echo "Configurando .env"
cp ./infra/production/env .env
source .env

echo "Verify bundle"
bundle check || bundle install

echo "Run Migrate"
bundle exec rake db:migrate

echo "Run Rails Server"
nohup rails s -b '0.0.0.0:3030' &

