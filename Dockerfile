FROM rodrigotsuru/ibmim-docker
MAINTAINER Rodrigo Tsuru "caixapostal@gmail.com"
COPY install.xml /tmp/install.xml
COPY masterpw.txt /tmp/masterpw.txt
COPY secure.dat /tmp/secure.dat
RUN /opt/IBM/InstallationManager/eclipse/tools/imcl input /tmp/install.xml -acceptLicense -showProgress -masterPasswordFile /tmp/masterpw.txt -secureStorageFile /tmp/secure.dat
ENTRYPOINT ["/opt/IBM/ISA/ISA5/start_isa.sh"]
EXPORT 10911 10911
