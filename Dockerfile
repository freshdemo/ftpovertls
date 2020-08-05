FROM debian

RUN     apt-get update --fix-missing -y

# Install all prerequisites
RUN  apt-get install --assume-yes proftpd net-tools vim

RUN useradd phishme -m
RUN echo phishme:phishme | chpasswd

ADD /proftpd.conf /etc/proftpd/proftpd.conf
ADD /tls.conf /etc/proftpd/tls.conf
ADD /ssl/ /etc/proftpd/ssl/
ADD /start.sh /root/start.sh

EXPOSE 21/tcp
EXPOSE 30000-30020

#ENTRYPOINT ["sh /root/start.sh"]
CMD /root/start.sh
