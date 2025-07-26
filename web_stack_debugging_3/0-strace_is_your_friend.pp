# This Puppet manifest installs the missing PHP MySQL module to fix Apache 500 error on WordPress

package { 'php5-mysql':
  ensure => installed,
}

service { 'apache2':
  ensure     => running,
  enable     => true,
  subscribe  => Package['php5-mysql'],
}
