#!/bin/bash
gcloud container clusters get-credentials my-gke-cluster --region us-central1
kubectl get nodes 
kubectl get ns 




# Run 
# bash login.sh