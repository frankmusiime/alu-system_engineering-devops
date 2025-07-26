s Puppet manifest fixes a high rate of failed requests by configuring Nginx properly

exec { 'fix--for-nginx':
  command => 'echo "Hello World!" > /var/www/html/index.html',
}

