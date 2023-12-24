FROM openjdk:21
EXPOSE 8100
ADD target/jenkinstest.jar jenkinstest.jar
ENTRYPOINT ["java", "-jar", "/jenkinstest.jar"]