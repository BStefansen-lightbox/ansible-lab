FROM alpine:latest
RUN apk add --update --no-cache openssh 
RUN apk add ansible
RUN apk add python3
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN adduser -h /home/blake -s /bin/sh -D blake
RUN echo -n 'blake:password' | chpasswd
EXPOSE 22
COPY entrypoint.sh /
ENTRYPOINT ["./entrypoint.sh"]
