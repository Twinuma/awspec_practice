require 'spec_helper'

describe iam_policy('PowerUserAccess') do
  it { should exist }
  it { should be_attachable }
  its(:arn) { should eq 'arn:aws:iam::aws:policy/PowerUserAccess' }
  its(:update_date) { should eq Time.parse('2015-02-06 18:39:47 UTC') }
  its(:attachment_count) { should eq 1 }
  it { should_not be_attached_to_user }
  it { should     be_attached_to_group('demo-power') }
  it { should_not be_attached_to_role }
end
