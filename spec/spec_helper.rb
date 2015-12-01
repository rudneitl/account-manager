require 'factory_girl'

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # factory_girl
  config.include FactoryGirl::Syntax::Methods

  config.before(:each) do
    # I18n.locale = 'pt-BR'
    ENV['NOAUTH'] = 'true'
  end

  config.after(:each) do
    ENV.delete('NOAUTH')
  end
end
