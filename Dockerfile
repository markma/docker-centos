FROM centos:7
MAINTAINER hackyo <137120918@qq.com>
ADD https://raw.githubusercontent.com/hackyoMa/docker-centos/7/CentOS-Base.repo /etc/yum.repos.d/
RUN rm -rf /var/cache/yum && yum makecache && yum -y update && yum -y autoremove && rm -rf /var/cache/yum
CMD ["/bin/bash"]
