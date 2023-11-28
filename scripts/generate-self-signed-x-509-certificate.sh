#!/bin/bash

out_directory="./.secrets/pki/ca"
subject_common_name="home.lab" # Important the domain of the k8s cluster

valid_days=3650 # 10 years

subject_country="NO"
subject_province="Vestland"
subject_locality="Bergen"
subject_organization_name="EtheralFabric"

# Generate a self-signed X.509 certificate
openssl req -x509 \
  -newkey rsa:2048 \
  -noenc \
  -days $valid_days \
  -subj "/C=$subject_country/ST=$subject_province/L=$subject_locality/O=$subject_organization_name/CN=$subject_common_name" \
  -extensions v3_ca \
  -keyout $out_directory/ca.key \
  -out $out_directory/ca.crt
