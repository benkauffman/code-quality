#!/bin/bash
#RUN AS ROOT!
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

apt-get install python-pip
pip install https://github.com/google/closure-linter/zipball/master