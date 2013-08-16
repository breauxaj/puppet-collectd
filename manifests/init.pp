class collectd {
  $required = $operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'collectd',
  }

  package { $required: ensure => latest }

}

define collectd::service ( $ensure,
                           $enable ) {
  $service = $operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'collectd',
  }

  service { $service:
    ensure    => $ensure,
    enable    => $enable,
  }

}
