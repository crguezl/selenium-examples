require 'capybara'
require 'capybara/poltergeist'

session = Capybara::Session.new(:poltergeist)

session.visit "http://nereida.deioc.ull.es/~lpp/perlexamples/"

if session.has_content?("Apuntes de RUBY")
  puts "All shiny, captain!"
else
  puts ":( no tagline fonud, possibly something's broken"
  exit(-1)
end
