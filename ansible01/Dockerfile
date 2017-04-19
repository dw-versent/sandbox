FROM debian

RUN apt-get update && apt-get install -y openssh-server && apt-get install -y ansible
RUN mkdir /var/run/sshd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
