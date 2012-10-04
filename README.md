# Setup

You'll need bundler installed

```
script/bootstrap
```

# Problem

To run all the specs together

```
script/specs
```

```
Spec
----
.F

Failures:

  1) test::aoeu 
     Failure/Error: it { should contain_foo('aoetnuhdaonteu') }
     Puppet::Error:
       Puppet::Parser::AST::Resource failed with error ArgumentError: Invalid resource type foo at /Users/tsharpe/test3/spec/fixtures/modules/test/manifests/aoeu.pp:2 on node sammael.local
     # ./spec/defines/test__aoeu_spec.rb:5:in `block (2 levels) in <top (required)>'

Finished in 0.08339 seconds
2 examples, 1 failure
```

If you run that spec on its own though, it succeeds

```
sammael :0: ~/test3 git:()!» bin/rspec spec/defines/test__aoeu_spec.rb 
Mocha deprecation warning: Test::Unit or MiniTest must be loaded *before*
Mocha.
Mocha deprecation warning: If you're integrating with another test library, you
should probably require 'mocha_standalone' instead of 'mocha'
.

Finished in 0.04708 seconds
1 example, 0 failures
```

It only seems to happen when the spec is run after the another spec that
doesn't call the custom native type (`foo`)
