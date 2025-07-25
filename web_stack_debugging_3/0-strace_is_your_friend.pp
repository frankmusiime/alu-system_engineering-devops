# Puppet manifest to fix Apache 500 error by restoring the missing WordPress symlink

file { '/var/www/html':
  ensure => 'link',
  target => '/var/www/wordpress',
}

service { 'apache2':
  ensure => running,
  enable => true,
}

