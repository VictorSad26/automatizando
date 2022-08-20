require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'cpf_cnpj'
require 'faker'
require 'pry'
require 'report_builder'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper'
require 'yaml'
require 'httparty'
require 'ffi'

World(PageObjects)
World(Capybara::DSL)
World(Capybara::RSpecMatchers)
Faker::Config.locale = 'pt-BR'

Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'

Capybara.register_driver :chrome do |app|
  chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
    options.add_argument '--disable-gpu'
    options.add_argument '--no-sandbox'
    options.add_argument '--disable-site-isolation-trials'
    options.add_argument '--start-maximized'
    options.add_argument 'user-agent="like RD-AUTOMATION-TESTING"'
  end
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
end

Capybara.configure do |config|
  config.default_driver = :chrome
  config.app_host = 'https://www.drogaraia.com.br/'
  config.default_max_wait_time = 20
  Capybara.page.driver.browser.manage.window.maximize
end
