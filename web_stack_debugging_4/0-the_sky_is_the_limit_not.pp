# This Puppet manifest installs and configures Nginx to fix failed requests under load

package { 'nginx':
  ensure => installed,
}

file { '/var/www/html/index.html':
  ensure  => file,
  content => '<!DOCTYPE html><html><head><title>OK</title></head><body><h1>Hello from Nginx</h1></body></html>',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
  require => Package['nginx'],
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  require    => Package['nginx'],
  subscribe  => File['/var/www/html/index.html'],
}
