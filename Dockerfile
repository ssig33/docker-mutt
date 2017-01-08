FROM debian:stable
RUN apt-get update && apt-get install -y mutt openssh-server
RUN mkdir /var/run/sshd
RUN echo "root:mutt" | chpasswd
COPY sshd_config /etc/ssh/sshd_config
CMD /usr/sbin/sshd -d
