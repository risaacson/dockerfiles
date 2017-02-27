FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get install -y openjdk-6-jdk && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /data

ENV JAVA_HOME /usr/lib/jvm/java-6-openjdk-amd64

CMD ["bash"]
