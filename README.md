role_solr
===================

Puppet module to install HA solrcloud, this includes a zookeeper ensemble. 


Parameters
-------------
All parameters are read from foreman

Classes
-------------
-
role_solr
role_solr::zookeeper

Dependencies
-------------
- cpcundill/puppet-zookeeper fork from viirya/puppet-zookeeper
- puppetlabs/java 1.1.0
  - puppetlabs/stdlib >= 0.1.6


Limitations
-------------
This module has been built as a customized scripts for solrcloud provisioning in a puppet foreman environment.

The module has been tested on:
- 
Ubuntu 12.04LTS

Authors
-------------
Author Name <hugo.vanduijn@naturalis.nl>

