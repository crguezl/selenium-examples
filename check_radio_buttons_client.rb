require 'capybara'
require 'capybara/poltergeist'

Capybara.default_driver = :poltergeist

session = Capybara::Session.new(:poltergeist)

session.instance_eval do
  visit "http://localhost:4567"
  fill_in 'Forename', :with => 'Casiano'
  fill_in 'Surname', :with => 'Rodríguez'
  select 'Mr', :from => 'title' # id
  choose "Over 16"              # text
  check "consent"               # id
  attach_file "form_image", "./bulb.png"
  click_on 'Go'

  # Save a screenshot of the page and open it for inspection.
  save_and_open_screenshot("./formfilled.pdf")

  f = find('#Forename') # f is  a Capybara::Element object
  puts "#{f.text}" 
  s = find('#Surname')
  puts "#{s.text}"
  puts "#{s.text}"
  puts "#{find('#title').text}"
  puts "#{find('#age').text}"
  puts "#{find('#consent').text}"
end


