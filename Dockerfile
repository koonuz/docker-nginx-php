FROM arm32v7/ubuntu:16.04
RUN apt-get update && \ 
    apt-get -y upgrade && \
    apt-get install -y wget apt-utils dialog
RUN wget http://soft.vpser.net/lnmp/lnmp1.5.tar.gz -cO lnmp1.5.tar.gz && tar zxf lnmp1.5.tar.gz && cd lnmp1.5 && LNMP_Auto="y" DBSelect="0" PHPSelect="8" SelectMalloc="1" ./install.sh lnmp
RUN rm -rf lnmp1.5.tar.gz && \ 
    rm -rf lnmp1.5  && \
VOLUME /home/wwwroot
EXPOSE 80 443
