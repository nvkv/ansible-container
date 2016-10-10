FROM alpine:3.4

RUN apk update && \ 
    apk add python \
    python-dev \
    py-pip \
    gcc \
    musl-dev \
    libffi-dev \
    openssl-dev \
    openssh

RUN pip install pywinrm xmltodict
RUN pip install ansible==2.1.1