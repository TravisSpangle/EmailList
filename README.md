# EmailList

Gem Demonstration - EmailList provides managment functionality to lists contianing emails

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'EmailList'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install EmailList

## Usage

EmailList.uniq( %w(one@test.com two@test.com two@test.com) ) will provide ["one@test.com","two@test.com"]

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/TravisSpangle/EmailList.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

