# == Class: hyperv
#
# Install Hyper-V tools on Linux guests

class hyperv {

  case $::osfamily {
    'Red Hat': { include hyperv::redhat }
    'Debian': { include hyperv::debian }
    default: { fail("jgazeley/hyperv does not support ${::osfamily}") }
  }

}
