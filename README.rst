CentOS - Base Image
===================

CentOS base image which has EPEL repo pre installed and all packages updated to latest versions available at build time.

Build
-----

.. code-block:: Shell

    DATE=$(date '+%Y-%m-%d')
    docker build --rm=true -t hub.bccvl.org.au/centos/centos7-epel:$DATE .



Publish
-------

.. code-block:: Shell

    docker push hub.bccvl.org.au/centos/centos7-epel:$DATE


