require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
# Carregar o arquivo que contem os modulos
require_relative 'page_helper.rb'
# Coloquei o modulo criado como Global
World(PageObjects)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5
end