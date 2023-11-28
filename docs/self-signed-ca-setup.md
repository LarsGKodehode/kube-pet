# Self Signed CA setup

Setting up a Certification Authority for a self hosted clusters.

## Commands

```shell
# Generate a self-signed X.509 certificate
openssl req -x509 \
  -newkey rsa:2048 \
  -noenc \
  -days $valid_days \
  -subj "/C=$subject_country/ST=$subject_province/L=$subject_locality/O=$subject_organization_name/CN=$subject_common_name" \
  -extensions v3_ca \
  -keyout $out_directory/ca.key \
  -out $out_directory/ca.crt
```

```shell
# Extract a TLS Certificate from a server, nice for Trust on first Use
server="registry.home.lab:443"

openssl s_client \
  -showcerts \
  -connect $server < /dev/null \
  | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p'
```

## Resources

- **Blogs & articles**
  - [Harbor Self Signed CA](https://yuweisung.medium.com/harbor-cert-manager-self-signed-ca-and-containerd-docker-troubleshooting-16b48b34503d)

- **References**
  - [Public Key Infrastructure](https://en.wikipedia.org/wiki/Public_key_infrastructure)
  - [Certificate Authority](https://en.wikipedia.org/wiki/Certificate_authority)

- **k8s Applications**
  [Cert-Manager](https://cert-manager.io)

- **Services**
  - [getlocalcert](https://console.getlocalcert.net/)
  - [Lets Encrypt](https://letsencrypt.org/)