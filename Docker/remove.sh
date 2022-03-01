#/bin/bash

docker stop nginx-container-dev
docker rm nginx-container-dev

docker stop php-container-dev 
docker rm php-container-dev 

docker stop app-data-container-dev
docker rm app-data-container-dev

docker stop mysql-container-dev
docker rm mysql-container-dev

docker stop mysql-data-container-dev
docker rm mysql-data-container-dev

docker stop nginx-container-test
docker rm nginx-container-test

docker stop php-container-test 
docker rm php-container-test

docker stop app-data-container-test
docker rm app-data-container-test

docker stop mysql-container-test
docker rm mysql-container-test

docker stop mysql-data-container-test
docker rm mysql-data-container-test


