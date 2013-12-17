# AwesomeScrub

Easy to use `String#scrub`. Prevent Invalid byte sequence in UTF-8.
Wrap `params[:name].respond_to?(:scrub) ? params[:name].scrub : params[:name]` to `params[:name].awesome_scrub`

[![Gem Version](https://badge.fury.io/rb/awesome_scrub.png)](http://badge.fury.io/rb/awesome_scrub)
[![Build Status](https://api.travis-ci.org/sanemat/awesome_scrub.png?branch=master)](https://travis-ci.org/sanemat/awesome_scrub)
[![Code Climate](https://codeclimate.com/github/sanemat/awesome_scrub.png)](https://codeclimate.com/github/sanemat/awesome_scrub)

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
