#!/bin/bash

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm upgrade --install --namespace nginx-ingress --create-namespace nginx-ingress ingress-nginx/ingress-nginx --set rbac.create=true