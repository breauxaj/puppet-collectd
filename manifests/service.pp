define collectd::service (
  $ensure,
  $enable
) {
  $service = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'collectd',
  }

  service { $service:
    ensure    => $ensure,
    enable    => $enable,
  }

}
