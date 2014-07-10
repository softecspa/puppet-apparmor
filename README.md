puppet-apparmor
===============

manage apparmor install and service

##Setup

    include apparmor

to purge package and services

    class {'apparmor':
      absent  => true
    }
