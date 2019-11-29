# bash-rpm-downloader
bash script to download rpms

## Requirements

This software it is design to be used for the following sets of OS's:

    - CentOS
    - RHEL
    - Fedora

## Packet requirements

$ sudo yum install -y createrepo

## Description
The file <icinga2-client.repo> should be placed under the /etc/yum.repos.d/* .

$ createrepo -v /home/rpms

Now it should be preatty easy to install any of the packets that could be found under /home/rpms and with dependencies.

