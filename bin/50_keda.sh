#!/bin/bash

helm repo add kedacore https://kedacore.github.io/charts
helm repo update
helm upgrade --install --namespace keda --create-namespace keda kedacore/keda
