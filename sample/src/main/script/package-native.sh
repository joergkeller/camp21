./mvnw package -Pnative -Dquarkus.native.container-build=true
podman build -f src/main/docker/Dockerfile.native-distroless -t docker.io/joergkeller/quarkus-sample:v1 .
podman run -i --rm -p 8080:8080 docker.io/joergkeller/quarkus-sample:v1
podman login docker.io
podman push docker.io/joergkeller/quarkus-sample:v1