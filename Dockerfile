FROM openjdk:21
ADD target/jenkinstest-0.0.1-SNAPSHOT.jar jenkinstest.jar
ENTRYPOINT["java", "-jar", "/jenkinstest.jar"]