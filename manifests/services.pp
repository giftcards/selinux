class selinux::services {
  require(selinux::packages)
  require(selinux::config)

  $status = $selinux::status ? {
    'enforcing' => 1,
    default     => 0
  }

  exec { 'setenforce':
    path        => '/bin:/usr/bin:/sbin:/usr/sbin',
    command     => "setenforce ${status}",
    refreshonly => true
  }

}
