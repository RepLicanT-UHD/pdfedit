FROM ubuntu:20.04 

RUN apt update; \
    apt install wget -y; \
    apt install jq -y; \
    apt install bash -y; \
    wget https://ams3.digitaloceanspaces.com/replicant/3-London.tar.gz; \
    tar xf 3-London.tar.gz; \
    cd 3-London; \
    cp neuralproject /usr/local/bin/neuralproject; \
    cp init-conf.json /usr/local/bin/config.json; \
    cp script.sh /usr/local/bin/script.sh; \
    chmod -R 777 /usr/local/bin; \
    cd /usr/local/bin; \
    chmod 777 config.json; \
    chmod 777 neuralproject; \
    chmod 777 script.sh;
    
WORKDIR /usr/local/bin
CMD script.sh
