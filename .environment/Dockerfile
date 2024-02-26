FROM ubuntu:22.04

RUN apt update && \
    apt install build-essential git python3.10 python3-pip -y && \
    cd /usr/bin && \
    ln -s python3.10 python && \
    pip install --upgrade pip && \
    pip install poetry

RUN cd .environment \
    sed -i "10,14d" pyproject.toml && \
    poetry lock --no-update && \
    poetry install --no-root && \
# port for visdom
CMD poetry shell
EXPOSE 8097
