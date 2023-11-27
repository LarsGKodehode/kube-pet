k3s_store="./k3s-system"

sudo k3s server  \
  --data-dir  "$k3s_store/" \
  --config "$k3s_store/config.yaml" \
  --write-kubeconfig "$k3s_store/k3s.yaml"