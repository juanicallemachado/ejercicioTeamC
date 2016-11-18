FROM ubuntu
RUN apt-get update
RUN apt-get install -y git-core maven openjdk-8-jdk
RUN mkdir jetty-helloworld-example
ADD pom.xml jetty-helloworld-example/pom.xml
ADD src jetty-helloworld-example/src
EXPOSE 8080
RUN mkdir /data
WORKDIR jetty-helloworld-example
ENTRYPOINT mvn jetty:run
