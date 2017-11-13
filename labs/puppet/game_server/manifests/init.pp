class game_server(
  String $gem_home = $game_server::params::gem_home,
  String $user     = $game_server::params::user
) inherits game_server::params {
  file { '/lib/systemd/system/game_server.service':
    mode => '0644',
    owner => 'root',
    group => 'root',
    content => template('game_server/game_server.systemd.erb'),
  } ~>
  exec { 'game_server-systemd-reload':
    command => 'systemctl daemon-reload',
    path => [ '/usr/bin', '/bin', '/usr/sbin' ],
    refreshonly => true,
  }

  service { 'game_server':
    ensure => running,
    enable => true,
    provider => 'systemd',

  }
}
