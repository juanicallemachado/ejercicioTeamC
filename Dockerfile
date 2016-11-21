FROM ubuntu
RUN apt-get update
RUN apt-get install -y git-core maven openjdk-8-jdk
RUN mkdir jetty-helloworld-example
ADD artifacts/*.war jetty-helloworld-example/app.war
ADD artifacts/*.jar jetty-helloworld-example/runner.jar
EXPOSE 8080
RUN mkdir /data
WORKDIR jetty-helloworld-example
ENTRYPOINT java -jar runner.jar app.war
#elgordooo
