FROM quantumobject/docker-nagios
RUN mkdir /usr/local/nagios/etc/hosts
RUN rm -rf /usr/local/nagios/etc/objects
COPY hosts /usr/local/nagios/etc/hosts
COPY objects /usr/local/nagios/etc/objects
COPY nagios.cfg /usr/local/nagios/etc/nagios.cfg
COPY htpasswd.users /usr/local/nagios/etc/htpasswd.users
