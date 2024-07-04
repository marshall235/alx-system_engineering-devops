# Using Puppet, install flask from pip3 
node default {
  package { 'pip3':
    ensure => installed,
    provider => 'pip',
  }

  pip { 'Flask':
    ensure => '2.1.0',
    provider => 'pip3',
  }
}
