FROM centos:7

RUN yum -y install epel-release && \
    yum -y update && \
    yum clean all

