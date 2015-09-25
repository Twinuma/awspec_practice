require 'spec_helper'
describe elb('test-elb') do
  it { should exist }
  its(:load_balancer_name) { should eq 'demo-elb' }
  its(:health_check_target) { should eq 'TCP:80' }
  its(:health_check_interval) { should eq 30 }
  its(:health_check_timeout) { should eq 5 }
  its(:health_check_unhealthy_threshold) { should eq 5 }
  its(:health_check_healthy_threshold) { should eq 3 }
  it { should have_listener(protocol: 'HTTPS', port: 443, instance_protocol: 'HTTP', instance_port: 80) }
  it { should have_listener(protocol: 'HTTP', port: 80, instance_protocol: 'HTTP', instance_port: 80) }
end
