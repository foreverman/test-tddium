require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get "http://www.baidu.com"
sleep 3

driver.find_element(:id, 'kw').send_keys "Hello WebDriver!"
driver.find_element(:id, 'su').click

puts driver.title
driver.quit
