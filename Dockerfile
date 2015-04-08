FROM rodrigotsuru/ibmim-docker
MAINTAINER Rodrigo Tsuru "caixapostal@gmail.com"
COPY install.xml /tmp/install.xml
COPY masterpw.txt /tmp/masterpw.txt
COPY secure.dat /tmp/secure.dat
RUN /opt/IBM/InstallationManager/eclipse/tools/imcl input /tmp/install.xml -acceptLicense -showProgress -masterPasswordFile /tmp/masterpw.txt -secureStorageFile /tmp/secure.dat
