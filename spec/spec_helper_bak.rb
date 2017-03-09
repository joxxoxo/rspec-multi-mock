require 'rubygems'
require 'rspec'
require 'rspec-multi-mock'
require 'not_a_mock'
require 'rspec/matchers/fail_matchers'

RSpec.configure do |config|
  config.include RSpec::Matchers::FailMatchers
  config.mock_with MultiMock::Adapter.for(
    :rspec,
    :mocha,
    :rr,
    ::NotAMock::RspecMockFrameworkAdapter
  )
  # config.mock_with :mocha
  # config.mock_with :rspec
  # config.mock_with ::NotAMock::RspecMockFrameworkAdapter
  # config.mock_with :rr
end
