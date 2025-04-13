#!/bin/bash

# membangun docker image dengan tag v1
docker build -t item-app:v1 .

# melihat daftar image lokal
docker images

# mengubah nama image ke format docker Hub
docker tag item-app:v1 <panggihdwialamsyah>/item-app:v1

# login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u <panggihdwialamsyah> --password-stdin

# push image ke docker hub
docker push <panggihdwialamsyah>/item-app:v1
