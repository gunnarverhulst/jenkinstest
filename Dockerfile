FROM openjdk:21
ADD target/jenkinstest.jar jenkinstest.jar
ENTRYPOINT ["java", "-jar", "/jenkinstest.jar"]