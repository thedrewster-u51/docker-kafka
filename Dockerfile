FROM openjdk:slim
ARG version=2.7.0
RUN apt-get update \
  && apt-get install -y curl
RUN mkdir /app \
  && cd /app \
  && curl https://apache.osuosl.org/kafka/2.7.0/kafka_2.13-${version}.tgz -o kafka_2.13-${version}.tgz \
  && tar -xvf kafka_2.13-${version}.tgz --strip-components=1 \
  && rm kafka_2.13-2.7.0.tgz
WORKDIR /app
