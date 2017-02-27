FROM ubuntu:16.10
MAINTAINER Richard Isaacson "richard.c.isaacson@gmail.com"

## UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8

## JAVA INSTALLATION
RUN echo "oracle-java9-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections \
    && echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" > /etc/apt/sources.list.d/webupd8team-java-trusty.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 \
    && apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes --no-install-recommends oracle-java9-installer oracle-java9-set-default \
    && apt-get clean all \
    && rm -rf /var/lib/apt/lists/*

## JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-6-oracle

WORKDIR /data

CMD ["bash"]
