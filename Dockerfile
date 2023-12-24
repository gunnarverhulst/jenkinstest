FROM openjdk:21
WORKDIR /var/jenkins_home/workspace/mvn_build_and_docker_image_build_test
RUN pwd
ENTRYPOINT ["java", "-jar", "/jenkinstest-1.0-SNAPSHOT.jar"]