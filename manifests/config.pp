class elasticsearch::config {
  $my_class                                                          = undef

  $package                                                           = 'elasticsearch'
  $package_ensure                                                    = 'installed'

  $user                                                              = 'elasticsearch'
  $group                                                             = 'elasticsearch'

  $service                                                           = 'elasticsearch'
  $service_ensure                                                    = 'running'
  $service_enable                                                    = true

  $conf_dir                                                          = '/etc/elasticsearch'

  $conf_file_sysconfig                                               = '/etc/sysconfig/elasticsearch'
  $conf_file_sysconfig_template                                      = 'elasticsearch/conf/sysconfig/elasticsearch.erb'
  $conf_file_sysconfig_content                                       = undef
  $conf_file_sysconfig_source                                        = undef

  $conf_file_elasticsearch                                           = "${conf_dir}/elasticsearch.yml"
  $conf_file_elasticsearch_template                                  = 'elasticsearch/conf/elasticsearch_config.erb'
  $conf_file_elasticsearch_content                                   = undef
  $conf_file_elasticsearch_source                                    = undef

  $conf_file_logging                                                 = "${conf_dir}/logging.yml"
  $conf_file_logging_template                                        = 'elasticsearch/conf/logging_config.erb'
  $conf_file_logging_content                                         = undef
  $conf_file_logging_source                                          = undef

  $es_include                                                        = undef
  $es_min_mem                                                        = undef
  $es_max_mem                                                        = undef

  $conf_cluster_name                                                 = undef
  $conf_node_name                                                    = $::fqdn
  $conf_node_master                                                  = undef
  $conf_node_data                                                    = undef
  $conf_node_max_local_storage_nodes                                 = undef
  $conf_index_number_of_shards                                       = undef
  $conf_index_number_of_replicas                                     = undef
  $conf_path_conf                                                    = $conf_dir
  $conf_path_data                                                    = undef
  $conf_path_work                                                    = undef
  $conf_path_logs                                                    = undef
  $conf_path_plugins                                                 = undef
  $conf_plugin_mandatory                                             = undef
  $conf_bootstrap_mlockall                                           = undef
  $conf_network_bind_host                                            = undef
  $conf_network_publish_host                                         = undef
  $conf_network_host                                                 = undef
  $conf_transport_tcp_port                                           = undef
  $conf_transport_tcp_compress                                       = undef
  $conf_http_port                                                    = undef
  $conf_http_max_content_length                                      = undef
  $conf_http_enabled                                                 = undef
  $conf_gateway_type                                                 = undef
  $conf_gateway_recover_after_nodes                                  = undef
  $conf_gateway_recover_after_time                                   = undef
  $conf_gateway_expected_nodes                                       = undef
  $conf_cluster_routing_allocation_node_initial_primaries_recoveries = undef
  $conf_cluster_routing_allocation_node_concurrent_recoveries        = undef
  $conf_indices_recovery_max_size_per_sec                            = undef
  $conf_indices_recovery_concurrent_streams                          = undef
  $conf_discovery_zen_minimum_master_nodes                           = undef
  $conf_discovery_zen_ping_timeout                                   = undef
  $conf_discovery_zen_ping_multicast_enabled                         = undef
  $conf_discovery_zen_ping_unicast_hosts                             = undef
  $conf_index_search_slowlog_level                                   = undef
  $conf_index_search_slowlog_threshold_query_warn                    = undef
  $conf_index_search_slowlog_threshold_query_info                    = undef
  $conf_index_search_slowlog_threshold_query_debug                   = undef
  $conf_index_search_slowlog_threshold_query_trace                   = undef
  $conf_index_search_slowlog_threshold_fetch_warn                    = undef
  $conf_index_search_slowlog_threshold_fetch_info                    = undef
  $conf_index_search_slowlog_threshold_fetch_debug                   = undef
  $conf_index_search_slowlog_threshold_fetch_trace                   = undef
  $conf_monitor_jvm_gc_parnew_warn                                   = undef
  $conf_monitor_jvm_gc_parnew_info                                   = undef
  $conf_monitor_jvm_gc_parnew_debug                                  = undef
  $conf_monitor_jvm_gc_concurrentmarksweep_warn                      = undef
  $conf_monitor_jvm_gc_concurrentmarksweep_info                      = undef
  $conf_monitor_jvm_gc_concurrentmarksweep_debug                     = undef
  # hash of additional parameters
  $conf_elasticsearch_additional_params                              = undef

  $logging_rootlogger                                                = [
    'INFO',
    'file']
  $logging_loggers                                                   = {
    'action'        => 'DEBUG',
    'com.amazonaws' => 'WARN',
    # 'gateway'       => 'DEBUG',
    # 'index.gateway' => 'DEBUG',
    # 'discovery'     => 'TRACE',
  }

  $logging_appenders                                                 = {
    'file'              => {
      'type'              => 'file',
      'file'              => '${path.logs}/${cluster.name}.log',
      'layout'            => {
        'type'              => 'pattern',
        'conversionPattern' => '"[%d{ISO8601}][%-5p][%-25c] %m%n"',
      }
    }
  }

}
