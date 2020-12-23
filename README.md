# pageres

![Screenshot](/images/screenshot-output.png)

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

---
[![PSC](http://www.andrew.cmu.edu/user/icaoberg/images/logos/psc.png)](http://www.psc.edu)

[icaoberg](http://www.andrew.cmu.edu/~icaoberg) at the [Pittsburgh Supercomputing Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
