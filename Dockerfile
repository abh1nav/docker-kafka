FROM abh1nav/java7

MAINTAINER Abhinav Ajgaonkar <abhinav316@gmail.com>

RUN \
    mkdir /etc/service/kafka /etc/service/zookeeper /opt/kafka; \
    wget -O - http://mirror.csclub.uwaterloo.ca/apache/kafka/0.8.2.0/kafka_2.11-0.8.2.0.tgz \
    | tar xzf - --strip-components=1 -C "/opt/kafka"

COPY zk-run /etc/service/zookeeper/run

COPY kafka-run /etc/service/kafka/run

WORKDIR /opt/kafka

# Expose Zookeeper port & Kafka port
EXPOSE 2181 9092 

CMD ["/sbin/my_init"]

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
