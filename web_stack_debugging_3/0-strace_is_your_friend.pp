# fest to fix Apache 500 error caused by missing index.php file

file { '/var/www/html/index.php':
  ensure  => file,
  content => "<?php\nphpinfo();\n",
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
}

service { 'apache2':
  ensure => running,
  enable => true,
}

