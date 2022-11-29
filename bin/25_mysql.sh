#!/bin/bash

helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm upgrade --install --namespace mysql --create-namespace wordpress bitnami/mysql
