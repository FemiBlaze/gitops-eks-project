#!/bin/bash
set -o xtrace

cat >/etc/eks/nodeadm.yaml <<'EOF'
apiVersion: node.eks.aws/v1alpha1
kind: NodeConfig
spec:
  cluster:
    name: ${cluster_name}
EOF

nodeadm init --config /etc/eks/nodeadm.yaml
