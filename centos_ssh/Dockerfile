FROM centos:centos7.6.1810
RUN yum -y install openssh openssh-client openssh-server
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
        && sed -ri 's/UsePAM yes/#UsePAM no/g' /etc/ssh/sshd_config 
RUN useradd -m -s /bin/bash coder
RUN echo "coder:coder" | chpasswd
RUN chmod 755 /etc/ssh/sshd_config \
&& ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key \
&& ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key \
&& ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key \
&& ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
#RUN chmod 600 /home/sshuser/.ssh/authorized_keys

EXPOSE 8080
WORKDIR /home/coder
CMD /usr/sbin/sshd
