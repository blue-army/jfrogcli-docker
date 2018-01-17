FROM debian:jessie-slim
LABEL maintainer="lucas-natraj"

ENV JFROGCLI_VER 1.13.1

RUN apt-get update && \
    apt-get install unzip wget -y && \
    mkdir -p /opt/jfrog && \
    wget -q -O /opt/jfrog/jfrog https://bintray.com/jfrog/jfrog-cli-go/download_file?file_path=${JFROGCLI_VER}%2Fjfrog-cli-linux-amd64%2Fjfrog && \
    chmod +x /opt/jfrog/jfrog && \
    ln -s /opt/jfrog/jfrog /usr/bin/jfrog

ENTRYPOINT [ "jfrog" ]
# CMD ["help"]

