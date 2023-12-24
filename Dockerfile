FROM openjdk:21
ADD target/jenkinstest.jar devops-integration.jar
ENTRYPOINT ["java", "-jar", "/jenkinstest.jar"]