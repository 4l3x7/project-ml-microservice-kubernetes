#!/usr/bin/env bash

# Define dockerpath
dockerpath=usagre90/project-ml-microservice-kubernetes

# Run the Docker Hub container with kubernetes
kubectl create deployment kub-project-ml-microservice-kubernetes --image=$dockerpath

# List pods
kubectl get pods

# Sleep to be able to forward once created
#echo "INFO: Sleeping"
#sleep 240

# Forward the container port to a host
kubectl port-forward deployment/kub-project-ml-microservice-kubernetes 8000:80
