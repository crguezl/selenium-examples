require 'capybara/dsl'
require 'capybara/poltergeist'
include Capybara::DSL

Capybara.default_driver = :poltergeist

visit "http://nereida.deioc.ull.es/~lpp/perlexamples/"

if has_content?("Apuntes de RUBY")
  puts "All shiny, captain!"
else
  puts ":( no tagline found, possibly something's broken"
  exit(-1)
end

