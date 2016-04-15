FROM centos:7

RUN passwd -d root && \
    yum -y install epel-release && \
    yum -y update && \
    yum clean all
