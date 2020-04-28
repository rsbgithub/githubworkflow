# Container image that runs your code
FROM alpine:latest

USER root

RUN apk update
RUN apk fetch openjdk8
RUN apk add openjdk8
RUN echo java -version

COPY  target/githubworkflow-1.0-SNAPSHOT.jar /home/githubworkflow-1.0-SNAPSHOT.jar
#CMD ["java","-jar","/home/githubworkflow-1.0-SNAPSHOT.jar"]

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY java_entrypoint.sh /java_entrypoint.sh

RUN echo "This is Dockerfile run!!"
RUN echo  $first-secret



# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/java_entrypoint.sh", "echo $GITHUB_REF", "echo $first-secret " ]

# java -jar /usr/local/runme/app.jar
#ENTRYPOINT ["java","-jar","app.jar"]