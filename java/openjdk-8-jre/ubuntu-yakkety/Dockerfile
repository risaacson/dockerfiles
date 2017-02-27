FROM ubuntu:16.10

RUN \
  apt-get update && \
  apt-get install -y openjdk-8-jre && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /data

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

CMD ["bash"]
