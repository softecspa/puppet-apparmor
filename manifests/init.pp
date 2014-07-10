# Remove apparmor

class apparmor (

  $absent         = params_lookup( 'absent' ),
  $package_name   = params_lookup( 'package_name' ),
  $service_name   = params_lookup( 'service_name' ),

) inherits apparmor::params {

  $ensure_package = $absent?{
    true  => 'purged',
    false => 'present'
  }

  $manage_service = $absent? {
    false => true,
    true  => false
  }

  include apparmor::install
  include apparmor::service

  if $apparmor::absent {
    class {'apparmor::absent':
      before  => Class['apparmor::install']
    }
  }
}
