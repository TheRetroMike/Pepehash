FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget build-essential -y
WORKDIR /opt/
RUN wget "https://dl.walletbuilders.com/download?customer=8488a66cf086ed7ef420d4c166af6447866634f64d49b90bc4&filename=pepehash-daemon-linux.tar.gz" -O pepehash-daemon-linux.tar.gz
RUN wget "https://dl.walletbuilders.com/download?customer=8488a66cf086ed7ef420d4c166af6447866634f64d49b90bc4&filename=pepehash-qt-linux.tar.gz" -O pepehash-qt-linux.tar.gz
RUN tar zxvf pepehash-daemon-linux.tar.gz
RUN tar zxvf pepehash-qt-linux.tar.gz
RUN mv pepehashd /usr/bin/
RUN mv pepehash-cli /usr/bin/
RUN rm pepehash*
RUN wget https://raw.githubusercontent.com/TheRetroMike/rmt-nomp/master/scripts/blocknotify.c
RUN gcc blocknotify.c -o /usr/bin/blocknotify
CMD /usr/bin/pepehashd -printtoconsole
