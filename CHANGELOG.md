# Changelog

## 0.3.4 (2016-04-15)
* Add alpine base Tomcat 8.0.33 with java jre 8.0.77
  * No jolokia signature check possible!
  * Image-Size reduce form 330Mb to 128Mb!
* Update Tomcat 8.0.33
* Update Jolokia 1.3.3
* Update Tomcat Native 1.2.5
  * tcnative use openssl 1.2.0g from sid
* Update to java OPENJDK 1.8.0_72
* set remote JMX Port to 127.0.0.1:8001, but don't expose!
  * If you publish the port, setup ssl and user access (conf/jmxremote.access and conf/jmxremote.password)

## 0.3.3 (2016-01-10)
* Update Tomcat 8.0.30
* Update Tomcat Native 1.1.34

## 0.3.2 (2015-10-30)
* Update Tomcat 8.0.28
* Update Jolokia 1.3.2

## 0.3.1 (2015-09-18)
* Update Tomcat 8.0.26

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
