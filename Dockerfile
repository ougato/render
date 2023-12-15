# 使用 CentOS 7 作为基础镜像
FROM centos:7

# 设置时区为Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 清理YUM缓存并安装常用工具
RUN yum -y update && yum -y install vim wget curl && yum clean all

# 设置默认工作目录
WORKDIR /root

# 暴露 SSH 端口
EXPOSE 22

# 启动 SSH 服务
CMD ["/usr/sbin/sshd", "-D"]
