# Installs apache, enables modules and configures vhost
class apache {
  package { ['apache2']:
    ensure => present;
  }

  service { 'apache2':
    ensure  => running,
    require => Package['apache2'];
  }

  file { "/etc/apache2/mods-enabled/rewrite.load":
    ensure  => link,
    target  => "/etc/apache2/mods-available/rewrite.load",
    require => Package['apache2'],
    notify  => Service['apache2'];
  }

  file { '/var/www':
    ensure => directory;
  }

  file { '/etc/apache2/sites-available/vagrant-vhost.conf':
      source  => "puppet:///modules/apache/vagrant-vhost.conf",
      require => Package['apache2'],
      notify  => Service['apache2'];
  }

  file { '/etc/apache2/sites-enabled/vagrant-vhost.conf':
      ensure => link,
      target => "/etc/apache2/sites-available/vagrant-vhost.conf",
      require => File['/etc/apache2/sites-available/vagrant-vhost.conf'],
      notify => Service['apache2'];
  }
}
