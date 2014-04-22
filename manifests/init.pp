# Install Moom.
class moom (
  $version = '310',
) {
  package { 'Moom':
    provider => 'appdmg',
    source   => "http://manytricks.com/download/_do_not_hotlink_/moom${version}.dmg",
  }
}
