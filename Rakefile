desc "run hello_lpp_dsl without warnings"
task :hello_dsl do
  sh "ruby -W0 hello_lpp_dsl.rb"
end

desc "install phantomjs in a mac"
task :phantom do
  sh "brew update && brew install phantomjs"
end

desc "run check_form_server"
task :formserver do
  sh "ruby check_form_server.rb"
end

desc "run check_form_client"
task :formclient do
  sh "ruby check_form_client.rb"
end
