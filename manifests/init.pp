# Install Moom.
class moom (
  $version = '310',
) {
  $curlrc = "/Users/${::boxen_user}/.curlrc"

  exec { 'set-curl-user-agent':
    path    => '/bin:/usr/bin',
    command => "echo 'user-agent = \"Mozilla/4.0\"' >> ${curlrc}",
    unless  => "grep -q user-agent ${curlrc}",
  } ->
  file { $curlrc:
    ensure  => 'present',
    content => undef,
    owner   => $::boxen_user,
    group   => 'staff',
    mode    => '0640',
  } ->
  package { 'Moom':
    provider => 'appdmg',
    source   => "http://manytricks.com/download/_do_not_hotlink_/moom${version}.dmg",
  }
}
