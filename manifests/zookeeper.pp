# == Class: role_solr::zookeeper
#
#
class role_solr::zookeeper (
  $nodename        = 'zoo1',
  $id              ,
  $servers         ['solr-zk1.cloud.naturalis.nl','solr-zk2.cloud.naturalis.nl','solr-zk3.cloud.naturalis.nl']
){
    node $nodename {
      include java
      class {'zookeeper::cluster':
          server_id       => $id,
          servers         => $servers
      }
  }
}