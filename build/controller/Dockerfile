FROM debian

RUN apt update \
	&& apt install -y ansible

#COPY ansible.cfg /etc/ansible/ansible.cfg
COPY hosts /etc/ansible/hosts

RUN apt install -y ssh

CMD "read"

