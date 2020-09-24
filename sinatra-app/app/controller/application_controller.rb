class ApplicationController < Sinatra::Base 
  
  configure do 
    set :publich_folder, 'public'
    set :views, 'app/views'
    # enable :sessions
    # set :session_secret, "carcollection"
  end 
  
  get '/' do 
    "Hello World!"
  end 
  
end 