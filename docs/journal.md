# Journal

I am keeping a short informal "journal" here just to keep track of the progress.

## Day 1

1. Install k3s
2. Install kubectl
3. Install helm
4. Install k9s
5. Start k3s cluster `./scripts-start-k3s-cluster.sh`
6. Set $KUBECONFIG to k3s cluster context `source .env`
7. Start k9s to monitor cluster
8. Setup and containerize an application (web-portal)
9. Generate helm charts for containerized application
10. Realize that we need to either push images to a public repository or setup a self hosted one
  (Masochistic tendencies voted for self hosting)
11. Looking into how to setup certificates for all of this
  (Started with Cert-Manager before backing out)
12. Decided path was windyer and narrower than anticipated.
13. Started reading more up on kubernetes and networking
