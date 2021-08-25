eksctl create nodegroup \
  --cluster camp21-quarkus \
  --region eu-central-1 \
  --name small-linux-nodes \
  --node-type t2.micro \
  --nodes 4 \
  --ssh-access \
  --ssh-public-key aws-ssh-key \
  --managed \
  --spot