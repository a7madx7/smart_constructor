# require 'smart_constructor'

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'smart_constructor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install smart_constructor

## Usage

Once you've required 'smart_constructor', you're newly created classes will have a constructor that 
accepts any number of hash parameters and creates instance variables out of it on the fly, note: you have to be careful with this one and know exactly what you're doing, otherwise it will mess up you code base!

```ruby
class Custom; end

custom_object = Custom.new(name: 'Ahmad', age: 22, hobbies: ['programming', 'cycling', 'travelling'], level: 7)
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/a7madx7/smart_constructor.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

