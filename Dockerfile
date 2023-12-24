FROM openjdk:21
WORKDIR /var/jenkins_home/workspace/mvn_build_and_docker_image_build_test
ADD ./target/jenkinstest-0.0.1-SNAPSHOT.jar jenkinstest.jar
ENTRYPOINT ["java", "-jar", "/jenkinstest.jar"]