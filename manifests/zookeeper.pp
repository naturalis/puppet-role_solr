# == Class: role_solr::zookeeper
#
#
class role_solr::zookeeper(
  $id,
  $servers         = ['solr-zk-001.cloud.naturalis.nl','solr-zk-002.cloud.naturalis.nl','solr-zk-003.cloud.naturalis.nl']
){

  class {'::zookeeper':
    id              => $id,
    servers         => $servers,
 }

}
