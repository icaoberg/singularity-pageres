# pageres
[![Hosted](https://img.shields.io/badge/hosted-sylabs.io-green.svg)](https://cloud.sylabs.io/library/icaoberg/default/pageres)
![Release](https://img.shields.io/badge/release-v5.0.0-green.svg)
[![Build Status](https://travis-ci.org/icaoberg/singularity-pageres.svg?branch=master)](https://travis-ci.org/icaoberg/singularity-pageres)
[![GitHub issues](https://img.shields.io/github/issues/icaoberg/singularity-pageres.svg)](https://github.com/icaoberg/singularity-pageres/issues)
[![GitHub forks](https://img.shields.io/github/forks/icaoberg/singularity-pageres.svg)](https://github.com/icaoberg/singularity-pageres/network)
[![GitHub stars](https://img.shields.io/github/stars/icaoberg/singularity-pageres.svg)](https://github.com/icaoberg/singularity-pageres/stargazers)
[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://www.gnu.org/licenses/quick-guide-gplv3.en.html)

![Logo](/images/logo.png)

Singularity recipe for [pageres-cli](https://github.com/sindresorhus/pageres-cli).

## Build the image

* Install [Singularity v2.6.+](https://sylabs.io/docs/).

## Help
```
> singularity run --app pageres singularity-debian-dusty-pageres-v5.0.0.sif

  Capture website screenshots

  Specify urls and screen resolutions as arguments. Order doesn't matter.
  Group arguments with [ ]. Options defined inside a group will override the outer ones.
  Screenshots are saved in the current directory.

  Usage
    $ pageres <url> <resolution>
    $ pageres [ <url> <resolution> ] [ <url> <resolution> ]

  Examples
    $ pageres https://sindresorhus.com https://example.com 1366x768 1600x900
    $ pageres https://sindresorhus.com https://example.com 1366x768 1600x900 --overwrite
    $ pageres [ https://example.com 1366x768 1600x900 --no-crop ] [ https://sindresorhus.com 1024x768 480x320 ] --crop
    $ pageres https://sindresorhus.com 1024x768 --filename='<%= date %> - <%= url %>'
    $ pageres https://example.com 1366x768 --selector='.page-header'
    $ pageres unicorn.html 1366x768

  Options
    --verbose, -v            Verbose output
    --crop, -c               Crop to the set height
    --delay=<seconds>, -d    Delay screenshot capture
    --filename=<template>    Custom filename
    --overwrite              Overwrite file if it exists
    --selector=<element>     Capture DOM element
    --hide=<element>         Hide DOM element (Can be set multiple times)
    --cookie=<cookie>        Browser cookie (Can be set multiple times)
    --header=<string>        Custom HTTP request header (Can be set multiple times)
    --username=<username>    Username for HTTP auth
    --password=<password>    Password for HTTP auth
    --scale=<number>         Scale webpage
    --format=<string>        Image format
    --css=<string>           Apply custom CSS

  <url> can also be a local file path
```

## Disclaimer

[![Wold you buy me some coffee?](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/icaoberg)

I am nothing but a humble programmer creating the container for this wonderful app. 

---
[![CBD](http://www.cbd.cmu.edu/wp-content/uploads/2017/07/wordpress-default.png)](http://www.cbd.cmu.edu)

Copyleft © 2020 [icaoberg](http://www.andrew.cmu.edu/~icaoberg) at the [Computational Biology Department](http://www.cbd.cmu.edu) in [Carnegie Mellon University](http://www.cmu.edu)
