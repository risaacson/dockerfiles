FROM ubuntu:17.04

RUN \
  apt-get update && \
  apt-get install -y openjdk-7-jdk && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /data

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

CMD ["bash"]
