# Install Hyper-V tools on Red Hat distros
class hyperv::redhat {
  package { 'hyperv-daemons':
    ensure => installed,
  }

  service { 'hypervvssd':
    ensure  => running,
    enable  => true,
    require => Package['hyperv-daemons'],
  }

  service { 'hypervkvpd':
    ensure  => running,
    enable  => true,
    require => Package['hyperv-daemons'],
  }
}
