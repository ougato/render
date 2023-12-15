#使用Ubuntu 22.04 作为基础镜像FROMubuntu: 22.84
#安装Shellinabox
RUN apt-get update && \
apt-get install -y shellinabox && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* / var/tmp/*
#设置root 用户的密码为‘root'
RUN echo 'root:frepai' | chpasswd
#暴露22端口
EXPOSE 22
#启动Shellinabox
CMD["/usr/bin/shellinaboxd"","-t","-s", "/:LOGIN"]
