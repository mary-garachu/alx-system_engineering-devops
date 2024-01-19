# Ensure pip is installed
package { 'python3-pip':
  ensure => installed,
}

# Using Puppet, install flask
package { 'flask':
  ensure          =>  'installed',
  install_options =>  ['-v', '2.1.1'],
  provider => 'pip3',
  require => Package['python3-pip'],
}
