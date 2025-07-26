# This Puppet manifest fixes a 500 error by restoring the symlink from /var/www/html to /var/www/wordpress, ensuring WordPress loads correctly

file { '/var/www/html':
  ensure => 'link',
  target => '/var/www/wordpress',
}

service { 'apache2':
  ensure => running,
  enable => true,
}
