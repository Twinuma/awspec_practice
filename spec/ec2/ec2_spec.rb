require 'spec_helper'

describe ec2('test-sv') do
  it { should exist }
  it { should be_running }
  its(:instance_id) { should eq 'i-xxxxx' }
  its(:image_id) { should eq 'ami-xxxx' }
  its(:private_dns_name) { should eq 'ip-xxxxxx.ap-northeast-1.compute.internal' }
  its(:public_dns_name) { should eq 'ec2-xxxxxxx.ap-northeast-1.compute.amazonaws.com' }
  its(:instance_type) { should eq 'm3.large' }
  its(:private_ip_address) { should eq '10.0.1.10' }
  its(:public_ip_address) { should eq '52.69.163.200' }
  it { should have_security_group('test-sg') }
  it { should belong_to_vpc('test-vpc') }
  it { should belong_to_subnet('test-vpc-subnet-az-1a') }
  it { should have_ebs('vol-xxxx') }
end
