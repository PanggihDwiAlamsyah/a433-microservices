#!/bin/bash

# username GitHub dan nama image
GITHUB_USER="panggihdwialamsyah"
IMAGE_NAME="ghcr.io/$GITHUB_USER/karsajobs"

# Build Docker image dari Dockerfile di direktori saat ini
docker build -t $IMAGE_NAME:latest .

# Login ke GitHub Container Registry menggunakan Personal Access Token (GITHUB_TOKEN)
echo $GITHUB_TOKEN | docker login ghcr.io -u $GITHUB_USER --password-stdin

# Push image yang sudah dibuild ke GHCR
docker push $IMAGE_NAME:latest

# Menampilkan info
echo "Image pushed to GitHub Packages: $IMAGE_NAME:latest"

