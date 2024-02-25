FROM ubuntu:22.04

RUN apt update && \
    apt install build-essential git python3.10 python3-pip -y && \
    cd /usr/bin && \
    ln -s python3.10 python && \
    pip install --upgrade pip && \
    pip install poetry

WORKDIR /root

RUN git clone https://github.com/KarhouTam/FL-bench.git && \
    cd FL-bench && \
    sed -i "10,14d" pyproject.toml && \
    poetry lock --no-update && \
    poetry install --no-root && \
    cd /root && \
    rm -rf FL-bench
# port for visdom
CMD poetry shell
EXPOSE 8097
