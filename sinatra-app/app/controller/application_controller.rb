class ApplicationController < Sinatra::Base 
  
  configure do 
    set :publich_folder, 'public'
    set :views, 'app/views'
    # enable :sessions ##do for cookies ##perfer firefox
    # set :session_secret, "carcollection" ##do for cookies perfer firefox
  end 
  
  get '/' do 
    "Hello World!"
  end 
  
end 