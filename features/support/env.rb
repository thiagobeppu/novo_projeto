require 'capybara/cucumber'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'rspec/expectations'
require 'settingslogic'

Dir[File.dirname(__FILE__) + '/../../lib/*.rb'].each { |f| require f }

After do
  youcadastro.fechar
end


include RSpec::Expectations
include PageHelpers
include Capybara::DSL

ENV['ENV'] ||= 'test'

if ENV['IN_BROWSER']
  Capybara.default_driver = :selenium
  Capybara.default_max_wait_time = 10
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
      app, browser: :firefox, marionette: true
      )

  end
  Capybara.page.driver.browser.manage.window.maximize
else
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
      app,
      inspector: true,
      js_errors: false,
      window_size: [1920, 1080],
      phantomjs_options: ['--ignore-ssl-errors=yes','--ssl-protocol=tlsv1'],
      debug: false
    )
  end
  Capybara.default_driver    = :poltergeist
  Capybara.javascript_driver = :poltergeist
  Capybara.ignore_hidden_elements = false
  Capybara.default_selector = :css
end
