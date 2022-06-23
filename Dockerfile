FROM maven:amazoncorretto
RUN mvn compile 
RUN mvn package
RUN mvn install
COPY target/jb-hello-world-maven-0.1.0.jar hello.HelloWorld
CMD java -jar jb-hello-world-maven-0.1.0.jar
