```bash
$ bundle exec ruby boot.rb
Zeitwerk@main: autoload set for Foo, to be autovivified from /private/tmp/zeitwerk-test-bed/app/foo
Zeitwerk@main: module Foo autovivified from directory /private/tmp/zeitwerk-test-bed/app/foo
Zeitwerk@main: autoload set for Foo::MyModel, to be loaded from /private/tmp/zeitwerk-test-bed/app/foo/my_model.rb
Traceback (most recent call last):
	5: from boot.rb:31:in `<main>'
	4: from ~/.gem/ruby/2.5.3/gems/zeitwerk-1.3.3/lib/zeitwerk/kernel.rb:16:in `require'
	3: from ~/.gem/ruby/2.5.3/gems/zeitwerk-1.3.3/lib/zeitwerk/kernel.rb:16:in `require'
	2: from /private/tmp/zeitwerk-test-bed/app/foo/my_model.rb:1:in `<top (required)>'
	1: from /private/tmp/zeitwerk-test-bed/app/foo/my_model.rb:2:in `<module:Foo>'
/private/tmp/zeitwerk-test-bed/app/foo/my_model.rb:3:in `<class:MyModel>': uninitialized constant Foo::MyModel::SomeHelper (NameError)
```