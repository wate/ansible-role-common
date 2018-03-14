require 'spec_helper'

describe file('/etc/skel/public') do
  it { should exist }
  it { should be_directory }
  it { should be_mode 755 }
end

describe file('/home') do
  it { should be_mode 755 }
end

describe file('/etc/sudoers.d/wheel') do
  it { should exist }
  it { should be_file }
  if property['sudo_require_password']
    it { should contain '%wheel ALL=(ALL) ' }
    it { should_not contain '%wheel ALL=(ALL) NOPASSWD: ALL' }
  else
    it { should contain '%wheel ALL=(ALL) NOPASSWD: ALL' }
  end
end

property['common_packages'].each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe package('firewalld') do
  it { should be_installed }
end

describe package('etckeeper') do
  it { should be_installed }
end

describe package('fail2ban') do
  it { should be_installed }
end

describe service('firewalld') do
  it { should be_enabled }
  it { should be_running }
end

describe service('fail2ban') do
  it { should be_enabled }
  it { should be_running }
end
