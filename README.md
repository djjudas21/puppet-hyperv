# hyperv

#### Table of Contents

1. [Overview](#overview)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Compatibility](#compatibility)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module installs Hyper-V tools on Linux guests.

## Usage

This module takes no options. To use it, simply do

```puppet
include hyperv
```

## Compatibility

Hyper-V compatibility between distributions is... interesting.

### RHEL

RHEL includes all related EL distributions such as Red Hat Enterprise Linux, CentOS, Scientific Linux, etc. RHEL5 had patchy support for Hyper-V so this module only works on RHEL6 and RHEL7. See [Microsoft's documentation](https://technet.microsoft.com/en-US/library/dn531026.aspx)

### Fedora

RHEL is derived from Fedora so compatibility is the same, and Fedora has supported Hyper-V for ages. This module only supports Fedora 21 and newer, because 20 and older are no longer receiving security updates and should not be used.

### Debian

Debian 7 and 8 support Hyper-V natively. This module will work with Debian but it won't actually do anything. See [Microsoft's documentation](https://technet.microsoft.com/en-US/library/dn614985.aspx)

### Ubuntu

Ubuntu has supported Hyper-V since 12.04. This module installs some extras. See [Microsoft's documentation](https://technet.microsoft.com/en-us/library/dn531029.aspx).

### Summary

These distros work and are supported by this module.

| Distro | Versions          |
| ------ |-------------------|
| RHEL   | `6` and newer     |
| Fedora | `21` and newer    |
| Debian | `7` and newer     |
| Ubuntu | `12.04` and newer |


## Development

Please send pull requests for adding support for other distros or fixing bugs.
