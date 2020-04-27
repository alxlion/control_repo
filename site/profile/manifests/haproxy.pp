class profile::haproxy {
  
  package { 'Install haproxy':
    ensure => installed,
    name => 'haproxy'
  }
  file { '/etc/haproxy/haproxy.cfg':
    source => 'puppet:///files/haproxy.cfg'
  }
  service { haproxy:
    ensure => running,
    enable => true,
  }
}
