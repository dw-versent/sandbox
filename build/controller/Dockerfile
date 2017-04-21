FROM debian

RUN apt update \
	&& apt install -y ansible ssh rsync

#COPY ansible.cfg /etc/ansible/ansible.cfg
COPY templates/hosts /etc/ansible/hosts

COPY templates/insecure.key /root/.ssh/insecure.key


