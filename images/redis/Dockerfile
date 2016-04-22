FROM ubuntu:14.04
MAINTAINER Shu Chao<shuc324@gmail.com>

# aliyuncs 源
RUN echo "deb http://mirrors.aliyuncs.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyuncs.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyuncs.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyuncs.com/ubuntu/ trusty-proposed main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.aliyuncs.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list

# 安装包
RUN apt-get update
RUN apt-get install -y redis-server
RUN rm -rf /var/lib/apt/lists/*

RUN mkdir /data && chown redis:redis /data
WORKDIR /data

EXPOSE 6379

CMD ["redis-server"]
