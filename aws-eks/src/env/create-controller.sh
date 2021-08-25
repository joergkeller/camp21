# https://docs.aws.amazon.com/eks/latest/userguide/aws-load-balancer-controller.html

aws iam create-policy \
    --policy-name camp21-LoadBalancerControllerPolicy \
    --policy-document file://lb-controller-policy.json

eksctl create iamserviceaccount \
  --cluster=camp21-quarkus \
  --namespace=kube-system \
  --name=aws-load-balancer-controller \
  --attach-policy-arn=arn:aws:iam::028829374374:policy/camp21-LoadBalancerControllerPolicy \
  --override-existing-serviceaccounts \
  --approve

# https://github.com/jetstack/cert-manager/releases/download/v1.1.1/cert-manager.yaml
kubectl apply \
    --validate=false \
    -f cert-manager.yaml

# https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v2.2.0/docs/install/v2_2_0_full.yaml
kubectl apply \
    -f lb-controller-full.yaml

# VERIFY
kubectl get deployment -n kube-system aws-load-balancer-controller