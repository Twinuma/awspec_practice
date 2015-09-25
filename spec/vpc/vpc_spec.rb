require 'spec_helper'

describe vpc('test-vpc') do
  it { should exist }
  it { should be_available }
  its(:vpc_id) { should eq 'vpc-xxxxxx' }
  its(:cidr_block) { should eq '10.0.0.0/16' }
  it { should have_route_table('') }
  it { should have_route_table('') }
  it { should have_network_acl('') }
end
