# Eraser

Erase or replace unicode space separators and line terminators.

Sepace separators are replaced with a space and line terminators are replaced with a newline.

Inspired by [https://github.com/roysharon/uninums](https://github.com/roysharon/uninums)

## Plot

John Kruger is a U.S. Marshal working for the Space Line Protection Program (SLPP) specializing in "erasing" controversial characters and replacing them with puppets for their safety... 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eraser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eraser

## Usage

```
require "eraser"

JohnKruger.erase("\uFEFF") # => " "
JohnKruger.erase("\u2029") # => "\n"

Eraser.erase("\uFEFF") # => " "
Eraser.erase("\u2029") # => "\n"

Eraser::LineTerminators.erase("\u2029", "P") # => "P"
Eraser::SpaceSeparators.erase("\uFEFF", "S") # => "S"
```

## Development

To install this gem onto your local machine, run `bundle exec rake install`. 

To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/polleverywhere/eraser.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

