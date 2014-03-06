# == Class: role_solr::zookeeper
#
#
class role_solr::zookeeper (
  $id              ,
  $nodename        = 'zoo1',
  $servers         ['solr-zk001.cloud.naturalis.nl','solr-zk002.cloud.naturalis.nl','solr-zk003.cloud.naturalis.nl']
){
    node $nodename {
      include java
      class {'zookeeper::cluster':
          server_id       => $id,
          servers         => $servers
      }
  }
}
