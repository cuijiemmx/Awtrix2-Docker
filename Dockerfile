FROM anapsix/alpine-java:8_jdk

ENV TZ "Asia/Shanghai"
ENV JAVA_TOOL_OPTIONS "-Duser.language=zh -Duser.country=CN"

WORKDIR /data
EXPOSE 7000 7001

COPY ./assets/entrypoint.sh /entrypoint.sh
COPY ./assets/awtrix.jar awtrix.jar

ENTRYPOINT [ "/entrypoint.sh" ]