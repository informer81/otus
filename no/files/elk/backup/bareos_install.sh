#!/bin/sh

# See http://download.bareos.org/bareos/release/
# for applicable releases and distributions

DIST=RHEL_8
# or
# DIST=RHEL_7
# DIST=CentOS_8
# DIST=CentOS_7
# DIST=Fedora_30
# DIST=Fedora_31

#RELEASE=release/19.2/
# or
 RELEASE=release/latest/
# RELEASE=experimental/nightly/

# add the Bareos repository
URL=http://download.bareos.org/bareos/$RELEASE/$DIST
wget -O /etc/yum.repos.d/bareos.repo $URL/bareos.repo

# install Bareos packages
#dnf install bareos bareos-database-postgresql postgresql-server bareos-webui -y
