require 'spec_helper'

describe security_group('sg-xxxxxxxxxxx') do
  it { should exist }
  its(:group_id) { should eq 'sg-xxxxxxxxxxx' }
  its(:group_name) { should eq 'demo-security-group' }
  its(:inbound) { should be_opened(22).protocol('tcp').for('192.168.10.0/24') }
  its(:inbound) { should be_opened(80).protocol('tcp').for('0.0.0.0/0') }
  its(:outbound) { should be_opened }
  its(:inbound_permissions_count) { should eq 2 }
  its(:outbound_permissions_count) { should eq 1 }
  it { should belong_to_vpc('demo-vpc') }
end
