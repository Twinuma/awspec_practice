require 'spec_helper'

describe rds('dev-db') do
  it { should exist }
  it { should be_available }
  its(:db_instance_identifier) { should eq 'dev-db' }
  its(:db_instance_class) { should eq 'db.t2.micro' }
  its(:multi_az) { should eq false }
  its(:availability_zone) { should eq 'ap-northeast-1c' }
  it { should have_security_group('test-rds-sg') }
  it { should belong_to_vpc('test-vpc') }
  it { should belong_to_db_subnet_group('test-rds-subnet') }
  it { should have_db_parameter_group('test-rds-pram-group') }
  it { should have_option_group('default:mysql-5-6') }
end
