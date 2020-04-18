require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
# Carregar o arquivo que contem os modulos
require_relative 'page_helper.rb'
# Coloquei o modulo criado como Global
World(PageObjects)

BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE']
# Config carrega o arquivo .yml criado no diretorio ambientes e é utilizado conforme o profile
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

Capybara.register_driver :selenium do |app|
    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome,)
    elsif BROWSER.eql?('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>TRUE)
    elsif BROWSER.eql?('ie')
        Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
    end
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5
end

