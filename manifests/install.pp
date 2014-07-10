class apparmor::install {

  notice($apparmor::ensure_package)

  package {$apparmor::package_name:
    ensure  => $apparmor::ensure_package,
  }

}
