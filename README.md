# AwesomeScrub

Easy to use `String#scrub`. Prevent Invalid byte sequence in UTF-8.
Wrap `params[:name].respond_to?(:scrub) ? params[:name].scrub : params[:name]` to `params[:name].awesome_scrub`.

[![Gem Version](https://badge.fury.io/rb/awesome_scrub.png)](http://badge.fury.io/rb/awesome_scrub)
[![Build Status](https://api.travis-ci.org/sanemat/awesome_scrub.png?branch=master)](https://travis-ci.org/sanemat/awesome_scrub)
[![Code Climate](https://codeclimate.com/github/sanemat/awesome_scrub.png)](https://codeclimate.com/github/sanemat/awesome_scrub)

## Use case

### Before:
```ruby
@name = params[:name].presence || 'nobody'
```

### After:
```ruby
@name = awesome_scrub(params[:name]).presence || 'noby'
```

## Point

Almost time this is no problem, but params[:name] include `invalid byte sequence in UTF-8`, like `invalid_byte_sequence.presence` (`invalid_byte_sequence.present?`) raises `ArgumentError: invalid byte sequence in UTF-8`.

This problem's solution is `String#scrub`(Feature of Ruby2.1, and `string-scrub` gem which backport for Ruby2.0), this replaces invalid characters. [Feature #6752: Replacing ill-formed subsequencce - ruby-trunk - Ruby Issue Tracking System](http://bugs.ruby-lang.org/issues/6752)

This stil has problem for writing code, `params[:name]` is `String` or `nil`, and some case `Array`, `Fixnum`, and other object does not have `#scrub` method.

### Work around

```ruby
name = params[:name].respond_to?(:scrub) ? params[:name].scrub : params[:name]
@name = name.presence || 'nobody'
```

### Solution
```ruby
@name = awesome_scrub(params[:name]).presence || 'nobody'
```

## Usage

### Methods

```ruby
# call scrub
awesome_scrub(args) #=> args.scrub

# call scrub!
awesome_scrub!(args) #=> args.scrub!
```

### Examples
```ruby
class Foo
  include AwesomeScrub

  def bar
    awesome_scrub(any)
  end
end
```
OR
```ruby
class Foo
  extend AwesomeScrub

  def bar
    awesome_scrub(any)
  end
end
```
OR
```ruby
AwesomeScrub::awesome_scrub(any)
```

## Installation

Add this line to your application's Gemfile:

    gem 'awesome_scrub'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install awesome_scrub

## Contributing

1. Fork it ( http://github.com/sanemat/awesome_scrub/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
