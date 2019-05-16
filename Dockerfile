FROM centos:7
MAINTAINER hackyo <137120918@qq.com>
ADD http://mirrors.aliyun.com/repo/Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo
RUN rm -rf /var/cache/yum && yum makecache && yum -y update && yum -y autoremove && rm -rf /var/cache/yum
CMD ["/bin/bash"]
