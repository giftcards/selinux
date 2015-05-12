class selinux::config {

  require(selinux::packages)

  file { '/etc/selinux/config':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('selinux/config.erb'),
    notify  => Exec['setenforce'];

    '/etc/sysconfig/selinux':
      ensure => link,
      target => '/etc/selinux/config';
  }

}

