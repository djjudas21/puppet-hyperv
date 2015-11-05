# Install Hyper-V tools on Debian distros
# Details from https://technet.microsoft.com/en-gb/library/dn531029.aspx
class hyperv::debian {

  case $::operatingsystem {
    'Ubuntu': {

      # Are we running one of the virtual kernels?
      $virtual = $::kernelrelease ? {
        /virtual$/ => '-virtual',
        default   => '',
      }

      # List of packages to install
      $packagelist = ["linux-tools${virtual}", "linux-cloud-tools${virtual}"]

      if $::operatingsystemrelease  == '14.04' {
        concat($packagelist, 'hv-kvp-daemon-init')
      }

      package { $packagelist:
        ensure => installed,
      }
    }
    'Debian': { warn('No action needed on Debian') }
    default: { fail("jgazeley/hyperv does not support ${::operatingsystem}") }
  }

}
