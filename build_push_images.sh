#!/bin/bash

# melakukan build dari dockerfila
docker build -t item-app:v1 .

# cek list docker images yang ada
docker images

# push docker images ke docker hub
cat ../dockerpass.txt | docker login --username rayhanvito27 --password-stdin
docker tag item-app:v1 rayhanvito27/item-app:v1
docker push rayhanvito27/item-app:v1