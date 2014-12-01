require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb :index
end

post '/' do
  erb :result, :locals => { :params => params }
end

__END__

@@layout
<!DOCTYPE HTML>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
</head>
<body>
  <%= yield %>
</body>
</html>

@@index
  <form id="myform" method="post" action="/">
     <label for "Forename">Forename</label>
     <input type="text" name="Forename" value="" /><br/>
     <label for "Surname">Surname</label>
     <input type="text" name="Surname" value="" /><br/>
     <input type="submit" value="Go" />
  </form> 

@@result
  <ul>
    <li id="Forename"> <%= params[:Forename]%>
    <li id="Surname"> <%= params[:Surname] %>
  </ul>
  <a href="/">Go back</a>
