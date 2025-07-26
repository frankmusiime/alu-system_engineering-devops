# This Puppet manifest installs the missing PHP MySQL module to fix Apache 500 error on WordPress

package { 'php5-mysql':
  ensure => installed,
}

exec { 'restart-apache':
  command     => '/etc/init.d/apache2 restart',
  refreshonly => true,
  subscribe   => Package['php5-mysql'],
}
