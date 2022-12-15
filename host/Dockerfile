FROM alpine:latest
RUN apk add --update --no-cache openssh 
RUN apk add ansible
RUN apk add python3
RUN apk add vim
RUN apk add sshpass
RUN mkdir ~/.ssh/
RUN touch ~/.ssh/config
COPY hosts /etc/ansible/
COPY ilovenano.yml .
