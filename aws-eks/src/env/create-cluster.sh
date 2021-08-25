# https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html
# https://www.youtube.com/watch?v=p6xDCz00TxU&t=631s

eksctl create cluster \
--name camp21-quarkus \
--nodegroup-name linux-nodes \
--node-type m4.large \
--nodes 4 \
--region eu-central-1 \
--with-oidc \
--ssh-access \
--ssh-public-key aws-ssh-key \
--managed \
--spot

eksctl utils associate-iam-oidc-provider --region=eu-central-1 --cluster=camp21-quarkus --approve