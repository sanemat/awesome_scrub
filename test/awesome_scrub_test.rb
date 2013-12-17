require 'minitest/autorun'
require_relative '../lib/awesome_scrub'

module AwesomeScrub
  class AwesomeScrubTest < Minitest::Test

    class TestClassWithInstanceAwesomeScrubs
      include AwesomeScrub
    end

    class TestClassWithClassAwesomeScrubs
      extend AwesomeScrub
    end

    def setup
      @instance_with_modules = TestClassWithInstanceAwesomeScrubs.new
    end

    def test_normal_string
      [@instance_with_modules, TestClassWithClassAwesomeScrubs, AwesomeScrub].each do |awesome_scrub|
        assert_equal('foo', awesome_scrub.awesome_scrub('foo'))
      end
    end
  end
end
