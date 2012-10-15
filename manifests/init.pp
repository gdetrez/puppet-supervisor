class supervisor {
  package{"supervisor":
    ensure => latest,
  }

  service{"supervisor":
    ensure => running,
    hasrestart => false,
  }

  Package["supervisor"] -> Service["supervisor"]
}
