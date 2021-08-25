eksctl create fargateprofile \
    --cluster camp21-quarkus \
    --name fargate-linux-nodes \
    --namespace quarkus-hello-demo

kubectl rollout restart -n quarkus-hello-demo deployment hello-app