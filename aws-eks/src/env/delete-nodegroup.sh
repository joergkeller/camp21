eksctl drain nodegroup --cluster=camp21-quarkus --name=linux-nodes
# wait
eksctl delete nodegroup --cluster=camp21-quarkus --name=linux-nodes