Bootstrap: docker
From: debian:buster

IncludeCmd: yes

%labels
    AUTHOR icaoberg
    EMAIL icaoberg@andrew.cmu.edu
    WEBSITE http://www.andrew.cmu.edu/~icaoberg
    VERSION 5.0.0

%post
    apt-get update && apt-get install -y --no-install-recommends apt-utils
    apt-get update --fix-missing
    apt-get install -y nodejs npm
    
####################################################################################
%appinstall pageres
    npm install npm@latest -g
    npm install --global pageres-cli
    apt-get -y autoremove

%apphelp pageres
    pageres --help

%apprun pageres
    pageres "$@"
