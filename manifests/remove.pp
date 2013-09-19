class collectd::remove {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'collectd',
  }

  $service = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'collectd',
  }

  package { $required: ensure => absent }

  service { $service:
    ensure  => stopped,
    enable  => false,
  }

}
