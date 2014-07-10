class apparmor::absent {

  exec { "apparmor-stop":
    command     => "/etc/init.d/apparmor stop; /etc/init.d/apparmor teardown",
    onlyif      => [ "dpkg -s apparmor | grep 'Status.*ok installed'" ],
  }

}
