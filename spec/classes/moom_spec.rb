require 'spec_helper'
describe 'moom' do
  it do
    should contain_class('moom')
    should contain_package('Moom').with_provider('appdmg')
    should contain_package('Moom').with_source('http://manytricks.com/download/_do_not_hotlink_/moom310.dmg')
  end
end
