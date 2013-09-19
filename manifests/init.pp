class collectd {
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'collectd',
  }

  package { $required: ensure => latest }

}
