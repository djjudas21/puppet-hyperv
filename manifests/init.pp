# == Class: hyperv
#
# Install Hyper-V tools on Linux guests

class hyperv {

  case $::facts['os']['family'] {
    'RedHat': { include hyperv::redhat }
    'Debian': { include hyperv::debian }
    default : { fail("hyperv class does not support ${facts['os']['family']}") }
  }

}
