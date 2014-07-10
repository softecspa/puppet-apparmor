class apparmor::service {

  if $apparmor::manage_service {
    service{$apparmor::service_name:
      ensure  => running
    }
  }

}
