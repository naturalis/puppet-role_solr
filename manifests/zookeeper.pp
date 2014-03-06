# == Class: role_solr::zookeeper
#
#
class role_solr::zookeeper (
  $id              ,
  $nodename        = 'zoo1',
  $servers         ['solr-zk-001.cloud.naturalis.nl','solr-zk-002.cloud.naturalis.nl','solr-zk-003.cloud.naturalis.nl']
){
    node $nodename {
      include java
      class {'zookeeper::cluster':
          server_id       => $id,
          servers         => $servers
      }
  }
}
