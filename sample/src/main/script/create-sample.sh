# https://quarkus.io/guides/getting-started
# https://quarkus.io/guides/smallrye-health

mvn io.quarkus:quarkus-maven-plugin:2.1.3.Final:create \
    -DprojectGroupId=com.zuehlke.camp21 \
    -DprojectArtifactId=sample \
    -Dextensions="smallrye-health" \
    -DclassName="com.zuehlke.camp21.GreetingResource" \
    -Dpath="/hello"