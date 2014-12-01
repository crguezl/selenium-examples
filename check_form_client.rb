require 'capybara'
require 'capybara/poltergeist'

Capybara.default_driver = :poltergeist

session = Capybara::Session.new(:poltergeist)

session.instance_eval do
  visit "http://localhost:4567"
  fill_in 'Forename', :with => 'Casiano'
  fill_in 'Surname', :with => 'Rodríguez'
  click_on 'Go'

  save_screenshot("formfilled.pdf")
  f = find('#Forename') # f is  a Capybara::Element object
  puts "****\nForename = #{f.text}" 
  s = find('#Surname')
  puts "****\nSurname = #{s.text}"
end


