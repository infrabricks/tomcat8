# Changelog

## 0.3.0 (2015-08-12)

* Update Tomcat 8.0.24
* Update Jolokia 1.3.1
* Update to java OPENJDK 1.8.0_66
* Add Dockerfile.rpi
  * (Raspberry 2 Support JRE 7 hypriot/rpi-java)
  * ToDo add missing jq

## 0.2.0 (2015-04-12)

### Tomcat
* Update Tomcat 8.0.21
+ Dockerfile.dev - 8-JDK with webapps and autoload
+ Dockerfile.tcnative-build - 8-JDK (experiment)
+ conf/server-dev.xml - autoload
+ docker-compose-volume.yml - refactor volume example
* Remove manager webapp
* docker-compose.yml - Now start a production ready Tomcat

### Other
* Add jolokia access example to readme
* refactor jolokia restrictions
* Check with tomcat and jolokia downloads with gpg
+ bin/infrabricks.txt - show asciiart at Tomcat start
+ build-all.sh

## 0.1.0 (2015-04-09)

* First release

## 0.0.3

* Flexible add webapps, libs, config - tomcat.sh

## 0.0.2

* Fix server.xml
* remove example webapps
* check downloads
* add tomcat.sh

## 0.0.1

* Setup
* split different images
* add jolokia
