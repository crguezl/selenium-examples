require 'capybara'
require 'capybara/poltergeist'

Capybara.default_driver = :poltergeist

session = Capybara::Session.new(:poltergeist)
session.visit "http://localhost:4567"

session.instance_eval do
  fill_in 'Forename', :with => 'Casiano'
  fill_in 'Surname', :with => 'Rodríguez'
  click_on 'Go'

  puts body # dump the contents of the page
end


