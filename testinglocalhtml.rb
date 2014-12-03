#!/usr/bin/env ruby
# This program evaluates a Capybara script against
# a local HTML page
# Usage:
#         testinglocalhtml index.html capybara_script.rb  [poltergeist]
require "capybara"
require 'capybara/poltergeist'
require 'rspec/expectations'

exit(1) if ARGV.length < 2
html, capybara = ARGV[0,2]
driver = (ARGV[2] || :selenium).to_sym

File.open(html) do |h|
  html = h.read
  File.open(capybara) do |c|
    capybara = c.read

    app = proc { |env| [200, { "Content-Type" => "text/html" }, [html] ] }

    session = Capybara::Session.new(driver, app)

    session.instance_eval capybara
  end
end
