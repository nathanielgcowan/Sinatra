class ApplicationController < Sinatra::Base 
  
  configure do 
    set :publich_folder, 'public'
    set :views, 'app/views'
    enable :sessions ##do for cookies ##perfer firefox
    set :session_secret, "auth_demo_lv" ##do for cookies perfer firefox
  end 
  
  get '/' do 
    session[:greeting]= "Hello World" #works as a hash
    response.set_cookie 'credit'
    #if they have a different webpage then you it is called session hijacking
    "Hello World!"
  end 
  
  get '/remember' do 
    session[:greeting]
  end 
    
end 