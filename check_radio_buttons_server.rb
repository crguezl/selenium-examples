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
   <label for="name1">User Forename</label>
   <input id="name1" type="text" name="Forename" value="" />
   <label for="name2">User Surname</label>
   <input id="name2" type="text" name="Surname" value="" />
   <p>
     <label for="title">Title</label>
     <select name="user_title" id="title">
       <option>Mrs</option>
       <option>Mr</option>
       <option>Miss</option>
     </select>
   </p>
   <p>
     <label for="under_16">Under 16</label>
     <input type="radio" name="underage" value="under"
            id="under_16" checked="checked"/>
     <label for="over_16">Over 16</label>
     <input type="radio" name="overage" value="over"
            id="over_16"/>
   </p> 
   <p>
     <label for="consent">Consent Given?</label>
     <input type="checkbox" value="yes" name="consent_checkbox"
                id="consent"/>
   </p>
   <input type="submit" value="Go" />
</form>

@@result
  <ul>
    <li id="Forename"> Forename: <%= params[:Forename]%> </li>
    <li id="Surname"> Surname: <%= params[:Surname] %> </li>
    <li id="title"> User title: <%= params[:user_title] %> </li>
    <li id="under_16"> Underage 16: <%= params[:underage] %> </li>
    <li id="over_16"> Overage 16: <%= params[:overage] %> </li>
    <li id="consent"> Consent: <%= params[:consent_checkbox] %> </li>
  </ul>
  <a href="/">Go back</a>
