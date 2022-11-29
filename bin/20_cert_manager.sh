#!/bin/bash

helm repo add jetstack https://charts.jetstack.io
helm repo update
helm upgrade --install --namespace cert-manager --create-namespace cert-manager jetstack/cert-manager --set installCRDs=true
kubectl apply -f manifests/cert-manager/cluster-issuer-prd.yaml