# DevDB Kafka

Kafka 0.8.2 in a docker container with Zookeeper - for when you need a quick dev Kafka node.

## Single Node with Ephemeral Storage

```
docker pull devdb/kafka:latest
docker run -d --name kafka -p 2181:2181 -p 9092:9092 devdb/Kafka
```
