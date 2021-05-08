FROM ubuntu:18.04

RUN apt-get update && apt-get install  -y gnupg software-properties-common curl git unzip python3.6 groff
RUN apt-get install  bash-completion && rm -rf /etc/apt/apt.conf.d/docker-clean
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg |  apt-key add -
RUN  apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN  apt-get update &&  apt-get install terraform
RUN curl -L "https://github.com/mozilla/sops/releases/download/v3.7.1/sops_3.7.1_amd64.deb" -o "sops.deb" && dpkg -i sops.deb
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip &&  ./aws/install  -i /usr/local/aws-cli -b /usr/local/bin

WORKDIR /home/ubuntu/project








