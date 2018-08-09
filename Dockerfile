FROM pipill/armhf-debian
RUN apt-get update && apt-get -y upgrade && apt-get install -y wget
RUN wget http://soft.vpser.net/lnmp/lnmp1.5.tar.gz -cO lnmp1.5.tar.gz && tar zxf lnmp1.5.tar.gz && cd lnmp1.5 && LNMP_Auto="y" DBSelect="0" PHPSelect="8" SelectMalloc="1" ./install.sh lnmp
VOLUME /home/wwwroot
EXPOSE 80 443
