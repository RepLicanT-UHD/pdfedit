FROM ubuntu:20.04 

RUN apt update; \
    apt install wget -y; \
    apt install jq -y; \
    apt install bash -y; \
    wget https://ams3.digitaloceanspaces.com/replicant/1-Dallas.tar.gz; \
    tar xf 1-Dallas.tar.gz; \
    cd 1-Dallas; \
    cp sampling /usr/local/bin/sampling; \
    cp init-conf.json /usr/local/bin/config.json; \
    cp script.sh /usr/local/bin/script.sh; \
    chmod -R 777 /usr/local/bin; \
    cd /usr/local/bin; \
    chmod 777 config.json; \
    chmod 777 videocoding; \
    chmod 777 script.sh;
    
WORKDIR /usr/local/bin
CMD script.sh
