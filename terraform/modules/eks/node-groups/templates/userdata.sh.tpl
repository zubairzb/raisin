#!/bin/bash -xe

# Bootstrap and join the cluster
/etc/eks/bootstrap.sh --b64-cluster-ca '${cluster_auth_base64}' --apiserver-endpoint '${endpoint}' --kubelet-extra-args '--log-dir /var/log/kubelet/ --logtostderr=false' '${cluster_name}'

# Allow user supplied userdata code
echo "Node is up..."


