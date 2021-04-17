FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY target/*.jar crony-spring-app.jar
ENTRYPOINT ["java","-jar","/crony-spring-app.jar"]