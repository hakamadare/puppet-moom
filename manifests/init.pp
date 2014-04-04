# Install Moom.
class moom {
  package { 'Moom':
    provider => 'appdmg',
    source   => 'http://manytricks.com/download/moom',
  }
}
