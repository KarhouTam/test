FROM ubuntu:22.04
ARG REPO_NAME
ARG REPO_PATH
RUN apt update && \
    apt install build-essential git python3.10 python3-pip -y && \
    cd /usr/bin && \
    ln -s python3.10 python && \
    pip install --upgrade pip && \
    pip install poetry

COPY ../../${REPO_NAME} /root

WORKDIR /root/${REPO_NAME}

RUN pwd && \
    ls -la

RUN cd .environment && \
    sed -i "10,14d" pyproject.toml && \
    poetry lock --no-update && \
    poetry install --no-root 
    
CMD poetry shell -C /root/${REPO_NAME}/.environment && nohup visdom &> /dev/null &

# port for visdom
EXPOSE 8097
