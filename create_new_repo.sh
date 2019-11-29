#!/bin/bash
##
# Mihai I. - 2019 idumihai16@gmail.com
##
# Description : This is an script used for creating the new repo

WORKING_DIRECTORY=$PWD
RPM_DIRECTORY=rpms

# yum list installed PACKAGE_NAME

createrepo -v $WORKING_DIRECTORY/$RPM_DIRECTORY
