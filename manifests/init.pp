class elasticsearch (
  $package                                                           = $::elasticsearch::config::package,
  $package_ensure                                                    = $::elasticsearch::config::package_ensure,
  $group                                                             = $::elasticsearch::config::group,
  $user                                                              = $::elasticsearch::config::user,
  $service                                                           = $::elasticsearch::config::service,
  $service_ensure                                                    = $::elasticsearch::config::service_ensure,
  $service_enable                                                    = $::elasticsearch::config::service_enable,
  $my_class                                                          = $::elasticsearch::config::my_class,
  $conf_file_sysconfig                                               = $::elasticsearch::config::conf_file_sysconfig,
  $conf_file_sysconfig_template                                      = $::elasticsearch::config::conf_file_sysconfig_template,
  $conf_file_sysconfig_content                                       = $::elasticsearch::config::conf_file_sysconfig_content,
  $conf_file_sysconfig_source                                        = $::elasticsearch::config::conf_file_sysconfig_source,
  $es_include                                                        = $::elasticsearch::config::es_include,
  $es_min_mem                                                        = $::elasticsearch::config::es_min_mem,
  $es_max_mem                                                        = $::elasticsearch::config::es_max_mem,
  $conf_file_logging                                                 = $::elasticsearch::config::conf_file_logging,
  $conf_file_logging_template                                        = $::elasticsearch::config::conf_file_logging_template,
  $conf_file_logging_content                                         = $::elasticsearch::config::conf_file_logging_content,
  $conf_file_logging_source                                          = $::elasticsearch::config::conf_file_logging_source,
  $conf_file_elasticsearch                                           = $::elasticsearch::config::conf_file_elasticsearch,
  $conf_file_elasticsearch_template                                  = $::elasticsearch::config::conf_file_elasticsearch_template,
  $conf_file_elasticsearch_content                                   = $::elasticsearch::config::conf_file_elasticsearch_content,
  $conf_file_elasticsearch_source                                    = $::elasticsearch::config::conf_file_elasticsearch_source,
  $conf_cluster_name                                                 = $::elasticsearch::config::conf_cluster_name,
  $conf_node_name                                                    = $::elasticsearch::config::conf_node_name,
  $conf_node_master                                                  = $::elasticsearch::config::conf_node_master,
  $conf_node_data                                                    = $::elasticsearch::config::conf_node_data,
  $conf_node_max_local_storage_nodes                                 = $::elasticsearch::config::conf_node_max_local_storage_nodes,
  $conf_index_number_of_shards                                       = $::elasticsearch::config::conf_index_number_of_shards,
  $conf_index_number_of_replicas                                     = $::elasticsearch::config::conf_index_number_of_replicas,
  $conf_path_conf                                                    = $::elasticsearch::config::conf_path_conf,
  $conf_path_data                                                    = $::elasticsearch::config::conf_path_data,
  $conf_path_work                                                    = $::elasticsearch::config::conf_path_work,
  $conf_path_logs                                                    = $::elasticsearch::config::conf_path_logs,
  $conf_path_plugins                                                 = $::elasticsearch::config::conf_path_plugins,
  $conf_plugin_mandatory                                             = $::elasticsearch::config::conf_plugin_mandatory,
  $conf_bootstrap_mlockall                                           = $::elasticsearch::config::conf_bootstrap_mlockall,
  $conf_network_bind_host                                            = $::elasticsearch::config::conf_network_bind_host,
  $conf_network_publish_host                                         = $::elasticsearch::config::conf_network_publish_host,
  $conf_network_host                                                 = $::elasticsearch::config::conf_network_host,
  $conf_transport_tcp_port                                           = $::elasticsearch::config::conf_transport_tcp_port,
  $conf_transport_tcp_compress                                       = $::elasticsearch::config::conf_transport_tcp_compress,
  $conf_http_port                                                    = $::elasticsearch::config::conf_http_port,
  $conf_http_max_content_length                                      = $::elasticsearch::config::conf_http_max_content_length,
  $conf_http_enabled                                                 = $::elasticsearch::config::conf_http_enabled,
  $conf_gateway_type                                                 = $::elasticsearch::config::conf_gateway_type,
  $conf_gateway_recover_after_nodes                                  = $::elasticsearch::config::conf_gateway_recover_after_nodes,
  $conf_gateway_recover_after_time                                   = $::elasticsearch::config::conf_gateway_recover_after_time,
  $conf_gateway_expected_nodes                                       = $::elasticsearch::config::conf_gateway_expected_nodes,
  $conf_cluster_routing_allocation_node_initial_primaries_recoveries = $::elasticsearch::config::conf_cluster_routing_allocation_node_initial_primaries_recoveries,
  $conf_cluster_routing_allocation_node_concurrent_recoveries        = $::elasticsearch::config::conf_cluster_routing_allocation_node_concurrent_recoveries,
  $conf_indices_recovery_max_size_per_sec                            = $::elasticsearch::config::conf_indices_recovery_max_size_per_sec,
  $conf_indices_recovery_concurrent_streams                          = $::elasticsearch::config::conf_indices_recovery_concurrent_streams,
  $conf_discovery_zen_minimum_master_nodes                           = $::elasticsearch::config::conf_discovery_zen_minimum_master_nodes,
  $conf_discovery_zen_ping_timeout                                   = $::elasticsearch::config::conf_discovery_zen_ping_timeout,
  $conf_discovery_zen_ping_multicast_enabled                         = $::elasticsearch::config::conf_discovery_zen_ping_multicast_enabled,
  $conf_discovery_zen_ping_unicast_hosts                             = $::elasticsearch::config::conf_discovery_zen_ping_unicast_hosts,
  $conf_index_search_slowlog_level                                   = $::elasticsearch::config::conf_index_search_slowlog_level,
  $conf_index_search_slowlog_threshold_query_warn                    = $::elasticsearch::config::conf_index_search_slowlog_threshold_query_warn,
  $conf_index_search_slowlog_threshold_query_info                    = $::elasticsearch::config::conf_index_search_slowlog_threshold_query_info,
  $conf_index_search_slowlog_threshold_query_debug                   = $::elasticsearch::config::conf_index_search_slowlog_threshold_query_debug,
  $conf_index_search_slowlog_threshold_query_trace                   = $::elasticsearch::config::conf_index_search_slowlog_threshold_query_trace,
  $conf_index_search_slowlog_threshold_fetch_warn                    = $::elasticsearch::config::conf_index_search_slowlog_threshold_fetch_warn,
  $conf_index_search_slowlog_threshold_fetch_info                    = $::elasticsearch::config::conf_index_search_slowlog_threshold_fetch_info,
  $conf_index_search_slowlog_threshold_fetch_debug                   = $::elasticsearch::config::conf_index_search_slowlog_threshold_fetch_debug,
  $conf_index_search_slowlog_threshold_fetch_trace                   = $::elasticsearch::config::conf_index_search_slowlog_threshold_fetch_trace,
  $conf_monitor_jvm_gc_ParNew_warn                                   = $::elasticsearch::config::conf_monitor_jvm_gc_ParNew_warn,
  $conf_monitor_jvm_gc_ParNew_info                                   = $::elasticsearch::config::conf_monitor_jvm_gc_ParNew_info,
  $conf_monitor_jvm_gc_ParNew_debug                                  = $::elasticsearch::config::conf_monitor_jvm_gc_ParNew_debug,
  $conf_monitor_jvm_gc_ConcurrentMarkSweep_warn                      = $::elasticsearch::config::conf_monitor_jvm_gc_ConcurrentMarkSweep_warn,
  $conf_monitor_jvm_gc_ConcurrentMarkSweep_info                      = $::elasticsearch::config::conf_monitor_jvm_gc_ConcurrentMarkSweep_info,
  $conf_monitor_jvm_gc_ConcurrentMarkSweep_debug                     = $::elasticsearch::config::conf_monitor_jvm_gc_ConcurrentMarkSweep_debug,
  $conf_elasticsearch_additional_params                              = $::elasticsearch::config::conf_elasticsearch_additional_params,
  $logging_rootlogger                                                = $::elasticsearch::config::logging_rootlogger,
  $logging_loggers                                                   = $::elasticsearch::config::logging_loggers,
  $logging_appenders                                                 = $::elasticsearch::config::logging_appenders,) inherits ::elasticsearch::config {
  package { $package: ensure => $package_ensure, }

  service { $service:
    ensure    => $service_ensure,
    enable    => $service_enable,
    hasstatus => true,
    require   => Package[$package],
  }

  group { $group:
    ensure  => present,
    require => Package[$package],
  }

  user { $user:
    ensure  => present,
    gid     => $group,
    require => [
      Package[$package],
      Group[$group]],
  }

  file { $conf_file_sysconfig:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    content => $conf_file_sysconfig_template ? {
      undef   => $conf_file_sysconfig_content,
      default => template($conf_file_sysconfig_template),
    },
    source  => $conf_file_sysconfig_source,
    require => Package[$package],
    notify  => Service[$service],
  }

  file { $conf_file_logging:
    ensure  => present,
    owner   => $user,
    group   => $group,
    mode    => '0644',
    content => $conf_file_logging_template ? {
      undef   => $conf_file_logging_content,
      default => template($conf_file_logging_template),
    },
    source  => $conf_file_logging_source,
    require => Package[$package],
    notify  => Service[$service],
  }

  file { $conf_file_elasticsearch:
    ensure  => present,
    owner   => $user,
    group   => $group,
    mode    => '0644',
    content => $conf_file_elasticsearch_template ? {
      undef   => $conf_file_elasticsearch_content,
      default => template($conf_file_elasticsearch_template),
    },
    source  => $conf_file_elasticsearch_source,
    require => Package[$package],
    notify  => Service[$service],
  }

  if $my_class {
    class { $my_class: }
  }

}
