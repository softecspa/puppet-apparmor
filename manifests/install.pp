class apparmor::install {

  package {$apparmor::package_name:
    ensure  => $apparmor::ensure_package,
  }

}
