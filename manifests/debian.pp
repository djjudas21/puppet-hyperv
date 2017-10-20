# Install Hyper-V tools on Debian distros
# Details from https://technet.microsoft.com/en-gb/library/dn531029.aspx
class hyperv::debian {

  case $::operatingsystem {
    'Ubuntu': {

      # Are we running one of the virtual kernels?
      if $::kernelrelease =~ /virtual$/ {
        $suffix = '-virtual'
      } elsif versioncmp("${::operatingsystemrelease}", '16.04') >= 0 {
        $suffix = '-generic'
      } else {
        $suffix = ''
      }

      # List of packages to install
      $packagelist = ["linux-tools${suffix}", "linux-cloud-tools${suffix}"]

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
