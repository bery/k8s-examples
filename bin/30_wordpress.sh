#!/bin/bash

helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm upgrade --install --namespace wordpress --create-namespace wordpress bitnami/wordpress --set autoscaling.enabled=true
