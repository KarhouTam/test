FROM ubuntu:22.04
ARG REPO_NAME
ARG REPO_PATH
RUN apt update && \
    apt install build-essential git python3.10 python3-pip -y && \
    cd /usr/bin && \
    ln -s python3.10 python && \
    pip install --upgrade pip && \
    pip install poetry

ADD ${REPO_PATH} /root
RUN cd ${REPO_PATH}/.environment && \
    sed -i "10,14d" pyproject.toml && \
    poetry lock --no-update && \
    poetry install --no-root 

WORKDIR /root/${REPO_NAME}

CMD poetry shell -C /root/${REPO_NAME}/.environment && nohup visdom &> /dev/null &

# port for visdom
EXPOSE 8097
