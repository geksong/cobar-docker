FROM openjdk:8
COPY ./cobar-server-1.2.7 /usr/local/cobar
COPY ./server.xml /usr/local/cobar/conf/server.xml
COPY ./schema.xml /usr/local/cobar/conf/schema.xml
COPY ./rule.xml /usr/local/cobar/conf/rule.xml
COPY ./run.sh /usr/local/cobar/bin/run.sh
RUN mkdir -p /usr/local/cobar/logs
WORKDIR /usr/local/cobar
EXPOSE 8066
ENTRYPOINT exec /bin/sh ./bin/run.sh
