require_relative '../../app'

require 'minitest/autorun'
require 'capybara'
require 'capybara/dsl'

class CapybaraTestCase < MiniTest::Unit::TestCase
  include Capybara::DSL

  def setup
    Capybara.app = App
  end

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end

class AppTest < CapybaraTestCase
  def test_visiting_the_homepage
    # When I visit the homepage
    visit '/'

    # Then I should see a friendly greeting
    assert page.has_content?('Hello World!')
  end
end

