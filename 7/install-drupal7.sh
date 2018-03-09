#!/bin/sh
rm -rf ./src/*
rm -rf ./src/.*
docker-compose run drush -y dl drupal-7.57
mv ./src/drupal-7.57/* ./src
mv ./src/drupal-7.57/.* ./src
docker-compose run drush -y si -r /app --db-url=mysql://iremus:coin@db/drupal7 --site-name=IReMus --account-pass=coin --account-mail=thomas.bottini@cnrs.fr --site-mail=thomas.bottini@cnrs.fr --locale=fr
