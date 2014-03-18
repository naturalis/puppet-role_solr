# == Class: role_solr::node
#
#
class role_solr::node(
  $zkhost                 = 'solr-zk-001.cloud.naturalis.nl:2222,solr-zk-002.cloud.naturalis.nl:2222,solr-zk-003.cloud.naturalis.nl:2222',
  $hostname               = undef,
  $hostport               = '8080',
){
  class { solr:
    zkhost               => $zkhost,
    hostname             => $hostname,
    hostport             => $hostport,
  }
}
