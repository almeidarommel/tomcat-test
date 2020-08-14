FROM tomcat:7.0.94-jdk8-openjdk-slim
MAINTAINER "Rommel Almeida Pinto <rpinto@redhat.com>"

#ENV TZ=America/Fortaleza
#RUN echo "America/Fortaleza" > /etc/timezone

COPY ./index.html $CATALINA_HOME/webapps/ROOT/index.html
#ENV JAVA_OPTS "-server -Xms256M -Xmx3072M -XX:MaxPermSize=256M -Duser.country=BR -Duser.language=pt -Duser.Timezone=America/Fortaleza"


CMD ["catalina.sh", "run"]
