FROM openjdk:8-jre
MAINTAINER Jackliu <jackl3@cisco.com>
RUN mkdir -p /opt/local/SMPP
COPY SMPPSim /opt/local/SMPP
WORKDIR /opt/local/SMPP
RUN chmod +x startsmppsim.sh
EXPOSE 88
EXPOSE 2775
CMD /opt/local/SMPP/startsmppsim.sh
