require 'awesome_scrub/version'

module AwesomeScrub
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
  end

  extend self

  def awesome_scrub(args)
    args.respond_to?(:scrub) ? args.scrub : args
  end
end
