require 'capybara'
session = Capybara::Session.new(:selenium)
session.visit "http://nereida.deioc.ull.es/~lpp/perlexamples/"

if session.has_content?("Apuntes de RUBY")
  puts "All shiny, captain!"
else
  puts ":( no tagline found, possibly something's broken"
  exit(-1)
end
