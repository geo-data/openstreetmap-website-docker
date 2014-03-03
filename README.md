# OpenStreetMap Website Docker Container

This repository contains instructions for building a
[Docker](https://www.docker.io/) image containing a working version of the
[openstreetmap-website](https://github.com/openstreetmap/openstreetmap-website)
(aka The Rails Port).

As well as providing an easy way to set up and run the back end website
software it also provides instructions for managing OSM databases, allowing you
to:

* Creating OSM databases
* Migrating OSM databases
* Importing OSM data into the database
* Drop databases

Run `docker run homme/openstreetmap-website` for usage instructions.

## About

The container runs Ubuntu 12.04 (Precise) and is based on the
[phusion/baseimage-docker](https://github.com/phusion/baseimage-docker).  It
includes:

* Postgresql 9.1
* Apache 2.2 with Phusion Passenger
* The latest Rails Port (at the time of image creation)
* The latest CGIMap code (at the time of image creation)

The Rails Port is set up by default to run in a 'production' environment.

## Status

This is a work in progress and although generally adequate it could benefit
from:

* Testing.
* Including support for the
  [high speed GPX importer](http://git.openstreetmap.org/gpx-import.git/).
* Tweaking postgresql for large data imports.

This won't be an exhaustive list!
