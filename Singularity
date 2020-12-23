Bootstrap: docker
From: alpine:edge

%labels
    AUTHOR icaoberg
    EMAIL icaoberg@psc.edu
    WEBSITE http://www.andrew.cmu.edu/~icaoberg
    VERSION 6.0.0

%post
    PUPPETEER_SKIP_DOWNLOAD='true'
    export PUPPETEER_SKIP_DOWNLOAD
    apk add --update nodejs npm
    npm i puppeteer

####################################################################################
%appinstall pageres
    npm install --global pageres-cli

%apphelp pageres
    pageres --help

%apprun pageres
    pageres "$@"
