#!/bin/bash
aws eks --region us-east-1  update-kubeconfig --name my-cluster

kubectl get ns 