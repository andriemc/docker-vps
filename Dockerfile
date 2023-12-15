FROM ubuntu:latest

RUN apt update && apt install  openssh-server sudo -y

ARG ROOT_PASSWORD
RUN  echo 'root:$ROOT_PASSWORD' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
