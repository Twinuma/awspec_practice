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

## References
- [https://github.com/k1LoW/awspec](https://github.com/k1LoW/awspec)
- [http://qiita.com/k1LoW/items/0ad3d70251c6adfad0e1](http://qiita.com/k1LoW/items/0ad3d70251c6adfad0e1)
