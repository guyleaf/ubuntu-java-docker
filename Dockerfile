#
#  Author: GuyLeaf
#  Date: 2021-05-29 12:10:57 AM GMT+8
#

FROM ubuntu:bionic
MAINTAINER GuyLeaf (http://github.com/guyleaf)

LABEL Description="Ubuntu + Java (OpenJDK)"

RUN apt-get update && apt-get upgrade -y

RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

RUN apt-get update && apt-get install -y nano wget software-properties-common default-jre default-jdk

COPY profile.d/java.sh /etc/profile.d/

CMD ["/bin/bash"]
