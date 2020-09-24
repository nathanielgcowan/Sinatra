class ApplicationController < Sinatra::Base 
  
  configure do 
    set :publich_folder, 'public'
    set :views, 'app/views'
  end 
  
  get '/' do 
    "Hello World!"
  end 
  
end 