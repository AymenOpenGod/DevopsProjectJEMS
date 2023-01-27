FROM openjdk:17-oracle
ADD target/spring-petclinic-3.0.0-SNAPSHOT.jar spring-petclinic-3.0.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar","spring-petclinic-3.0.0-SNAPSHOT.jar"]
EXPOSE 8080
