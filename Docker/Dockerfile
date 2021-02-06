From centos
MAINTAINER Shakeer
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat/
RUN curl -O -L https://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.tar.gz 
RUN tar xvfz apache*.tar.gz
RUN cp -r apache-tomcat-9.0.33/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]

