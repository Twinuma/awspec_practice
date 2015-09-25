require 'spec_helper'
describe route53_hosted_zone('vivo.voyage.') do
  it { should exist }
  its(:resource_record_set_count) { should eq 23 }
  it { should have_record_set('hogehoge.com.').cname('hoge-app.elasticbeanstalk.com').ttl(300) }
end
