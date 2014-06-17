require 'spec_helper'
describe 'moom' do
  let (:facts) {{ :boxen_user => 'vecna' }}

  describe 'defaults' do
    it do
      should contain_class('moom')
      should contain_exec('set-curl-user-agent')
      should contain_file('/Users/vecna/.curlrc')
      should contain_package('Moom').with_provider('appdmg')
      should contain_package('Moom').with_source('http://manytricks.com/download/_do_not_hotlink_/moom310.dmg')
    end
  end

  describe 'version specified' do
    let (:params) {{ :version => '310' }}
    it do
      should contain_class('moom')
      should contain_exec('set-curl-user-agent')
      should contain_file('/Users/vecna/.curlrc')
      should contain_package('Moom').with_provider('appdmg')
      should contain_package('Moom').with_source('http://manytricks.com/download/_do_not_hotlink_/moom310.dmg')
    end
  end
end
