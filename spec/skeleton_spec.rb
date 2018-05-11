require 'spec_helper'

describe file('/etc/skel/public') do
  it { should exist }
  it { should be_directory }
  it { should be_mode 755 }
end
