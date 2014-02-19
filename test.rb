require 'rubygems'
require 'selenium-webdriver'
require 'capybara'
require 'capybara-webkit'

# Capybara.current_driver = :webkit
Capybara.current_driver = :selenium
Capybara.app_host = 'http://www.google.com'
Capybara.run_server = false

include Capybara::DSL
visit('https://apps-dev-new.yottaa.com')
fill_in('user[email]', with: 'sliu@yottaa.com')
fill_in('user[password]', with: '111111')
click_button('Login')
puts page.has_content?('assess, monitor & optimize your websites')
# driver = Selenium::WebDriver.for :firefox
# driver.get "http://www.baidu.com"
# sleep 3
# 
# driver.find_element(:id, 'kw').send_keys "Hello WebDriver!"
# driver.find_element(:id, 'su').click
# 
# puts driver.title
# driver.quit
