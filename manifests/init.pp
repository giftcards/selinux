class selinux (

  $status = $selinux::params::status,
  $type   = $selinux::params::type

  ) inherits params {

  include selinux::packages
  include selinux::config
  include selinux::services

}
