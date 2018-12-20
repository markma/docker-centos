FROM centos:7
MAINTAINER hackyo <137120918@qq.com>
ADD http://mirrors.163.com/.help/CentOS7-Base-163.repo /etc/yum.repos.d/CentOS-Base.repo
RUN rm -rf /var/cache/yum && yum makecache && yum -y update && yum -y autoremove && rm -rf /var/cache/yum
CMD ["/bin/bash"]
