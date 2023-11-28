#!/bin/bash

certificate_directory="./.secrets/certificates"
common_name="home.lab"

# Generate a private key for the certificate
openssl genrsa -out "$certificate_directory/registry.key" 2048

# Create a certificate signing request (CSR)
openssl req -new -key "$certificate_directory/registry.key" -out "$certificate_directory/registry.csr" -subj "/CN=$common_name"

# Generate a self-signed certificate using the CSR
openssl x509 -req -in "$certificate_directory/registry.csr" -signkey "$certificate_directory/registry.key" -out "$certificate_directory/registry.crt"
