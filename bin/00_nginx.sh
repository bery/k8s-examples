#!/bin/bash

helm upgrade --install --namespace nginx-app --create-namespace nginx-app charts/nginx --set rbac.create=true