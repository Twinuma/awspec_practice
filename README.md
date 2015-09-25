# awspec_practice
My first awspec practice repository

## work environment
```
$ sw_vers
ProductName:	Mac OS X
ProductVersion:	10.10.5
BuildVersion:	14F27
```

## ruby version
```
$ ruby -v
ruby 2.2.3p173 (2015-08-18 revision 51636) [x86_64-darwin14]
```

## tree
```
./
├── Gemfile
├── Gemfile.lock
├── README.md
├── Rakefile
└── spec
    ├── secrets.yml
    ├── security_group_current_spec.rb
    └── spec_helper.rb
```

## execute command
- ```mkdir awspec```
- ```cd awspec```
- ```vim Gemfile```
- ```bundle```
- ```vim spec/secrets.yml```
- ```echo "require 'spec_helper'" > spec/security_group_current_spec.rb```
- ```awspec generate security_group vpc-xxxxx >> spec/security_group_current_spec.rb```
- ```bundle exec rake spec```

## secrets.yml
```secrets.yml
region: ap-northeast-1
aws_access_key_id: XXXXXXXXXXXXXXXXXXXXX
aws_secret_access_key: XXXXXXXXXXXXXXXXXXXXXXXXX
```

## security_group_current_spec.rb
```security_group_current_spec.rb
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
```

## References
- [https://github.com/k1LoW/awspec](https://github.com/k1LoW/awspec)
- [http://qiita.com/k1LoW/items/0ad3d70251c6adfad0e1](http://qiita.com/k1LoW/items/0ad3d70251c6adfad0e1)
