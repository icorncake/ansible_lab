#set base
FROM alpine:3.10

MAINTAINER Chad Wise <cwise24@gmail.com>

RUN apk upgrade 
RUN apk --update add --no-cache --virtual .pynacl_deps build-base g++ libffi libffi-dev openssl
RUN apk --update add openssl-dev python3 python3-dev openssh sshpass git py3-lxml py3-pillow && \
    echo "Installing PIP" && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    echo "Installing ansible and tools" && \
    pip3 install --no-cache ansible  f5-sdk deepdiff && \
    pip3 install --no-cache jmespath && \ 
    pip3 install --no-cache netmiko &&\
    pip3 install --no-cache yamllint && \ 
    echo "installing Docx and PPTx" && \
    pip3 install --no-cache python-docx && \
    pip3 install --no-cache python-pptx

RUN apk del .pynacl_deps

RUN adduser --disabled-password ansible

USER ansible
WORKDIR /home/ansible

RUN mkdir -p /home/ansible/ansible_lab && \
    touch /home/ansible/.ansible.cfg

EXPOSE 22/tcp

