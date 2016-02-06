FROM errordeveloper/oracle-jre
CMD mkdir -p /opt/sling
ADD http://www.eu.apache.org/dist//sling/org.apache.sling.launchpad-8.jar /opt/sling/
WORKDIR /opt/sling/
EXPOSE 8080
VOLUME /opt/sling/sling
ENV JAVA_OPTS -Xmx512m
ENV SLING_OPTS ''
#CMD exec java $JAVA_OPTS -jar org.apache.sling.launchpad-8-standalone.jar $SLING_OPTS
CMD ["-Xmx512m", "-jar", "org.apache.sling.launchpad-8.jar" ]
