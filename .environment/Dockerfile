FROM ubuntu:22.04

RUN apt update && \
    apt install build-essential git python3.10 python3-pip -y && \
    cd /usr/bin && \
    ln -s python3.10 python

WORKDIR /root

RUN curl -O https://raw.githubusercontent.com/KarhouTam/FL-bench/master/requirements.txt

RUN pip install -r requirements.txt && rm requirements.txt

# port for visdom
EXPOSE 8097
