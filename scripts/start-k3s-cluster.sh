k3s_store="/home/zab/projects/kube-pet/.k3s-system"

sudo k3s server  \
  --disable=traefik \
  --data-dir  "${k3s_store}/" \
  --config "${k3s_store}/config.yaml" \
  --write-kubeconfig "${k3s_store}/k3s.yaml"

export KUBECONFIG="${k3s_store}k3s.yaml"
