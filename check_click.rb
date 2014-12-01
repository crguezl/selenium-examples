require 'capybara'
require 'capybara/poltergeist'

Capybara.default_driver = :poltergeist

session = Capybara::Session.new(:poltergeist)
session.visit "http://crguezl.github.io/selenium-examples/index.html"

session.click_link "example1"

puts session.body # dump the contents of the page

session.save_page('example1_download.html')

