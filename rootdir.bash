#! /bin/bash
#/etc/facter/facts.d/rootdir.bash
rootdir=$(df -h | awk -F' ' '$6=="/" {print $1}')
echo rootdir=$rootdir
