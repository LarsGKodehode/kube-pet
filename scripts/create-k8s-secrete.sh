#!/bin/bash

kubectl create secret tls \
  registry-tls \
  --cert=".secrets/certificates/registry.crt" \
  --key=".secrets/certificates/registry.key"
