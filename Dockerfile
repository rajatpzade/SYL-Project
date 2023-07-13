FROM centos:7
RUN yum install epel-release -y 
RUN yum install java-openjdk -y 
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.91/bin/apache-tomcat-8.5.91.tar.gz /opt
WORKDIR /opt
RUN tar -xzf apache-tomcat-8.5.91.tar.gz -C /opt
WORKDIR /opt/apache-tomcat-8.5.91
EXPOSE 8080 
CMD ./bin/catalina.sh run  