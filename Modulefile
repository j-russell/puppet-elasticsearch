name 'jrussell-elasticsearch'
version '1.0.1'

author 'Josh Russell'
license 'Apache License, Version 2.0'
project_page 'https://github.com/j-russell/puppet-elasticsearch'
source 'https://github.com/j-russell/puppet-elasticsearch'
summary 'Puppet elasticsearch module'
description 'Requires elasticsearch rpms built using spec files provided by https://github.com/tavisto/elasticsearch-rpms

  class { \'elasticsearch\':
    es_min_mem        => \'512m\',
    es_max_mem        => \'1g\',
    conf_cluster_name => \'mycluster\',
    conf_node_master  => \'true\',
    conf_node_data    => \'false\',
    conf_path_data    => \'/var/lib/elasticsearch\',
    conf_discovery_zen_minimum_master_nodes   => 1,
    conf_gateway_recover_after_nodes          => 5,
    conf_gateway_recover_after_time           => \'5m\',
    conf_gateway_expected_nodes               => 6,
    conf_discovery_zen_ping_multicast_enabled => \'false\',
    conf_discovery_zen_ping_unicast_hosts     => \'127.0.0.1\',
    conf_elasticsearch_additional_params      => {
      \'index.store.compress.stored\' => \'true\',
      \'cloud.aws.access_key\'        => \'XXXXXXXXXXXXXXXXXXXX\',
      \'cloud.aws.secret_key\'        => \'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\',
      \'discovery.type\'              => \'ec2\',
      \'discovery.ec2.groups\'        => \'elasticsearch_security_group\',
      \'discovery.ec2.host_type\'     => \'private_ip\',
      \'cloud.node.auto_attributes\'  => \'true\',
    }
  }'
dependency 'puppetlabs/stdlib', '>=2.2.1'
dependency 'ripienaar/concat', '>=0.1.0'
