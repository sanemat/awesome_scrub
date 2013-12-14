require "awesome_scrub/version"

module AwesomeScrub
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
  end

  def awesome_scrub(args)
    puts 'awesome-awesome-awesome'
  end
end
