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

    def test_bang_normal_string
      [@instance_with_modules, TestClassWithClassAwesomeScrubs, AwesomeScrub].each do |awesome_scrub|
        assert_equal('foo', awesome_scrub.awesome_scrub!('foo'))
      end
    end

    def test_call_scrub
      [@instance_with_modules, TestClassWithClassAwesomeScrubs, AwesomeScrub].each do |awesome_scrub|
        mock = MiniTest::Mock.new
        mock.expect(:scrub, 'woot')
        awesome_scrub.awesome_scrub(mock)
        assert mock.verify
      end
    end

    def test_bang_call_scrub
      [@instance_with_modules, TestClassWithClassAwesomeScrubs, AwesomeScrub].each do |awesome_scrub|
        mock = MiniTest::Mock.new
        mock.expect(:scrub!, 'woot')
        awesome_scrub.awesome_scrub!(mock)
        assert mock.verify
      end
    end
  end
end
