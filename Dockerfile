FROM centos:7.2.1511

RUN passwd -d root && \
    yum -y install epel-release && \
    yum -y update && \
    yum clean all
