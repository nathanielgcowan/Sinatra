class ApplicationController < Sinatra::Base 
  
  configure do 
    set :publich_folder, 'public'
    set :views, 'app/views'
    enable :sessions ##do for cookies ##perfer firefox
    set :session_secret, "auth_demo_lv" ##do for cookies perfer firefox
  end 
  
  # get '/' do 
  #   session[:greeting]= "Hello World" #works as a hash
  #   response.set_cookie 'credit_amount', "100"
  #   #if they have a different webpage then you it is called session hijacking
  #   "Hello World!" #you want to put a cookie in the session, otheriwse the user can access this
  # end 
  
  # get '/remember' do 
  #   "You have #{resquest.cookies["credit_amount"]} left to sample"
  # end 
  
  helpers do 
    
    def logged_in?
      !!session[:email]
      ##this !! is a patter in ruby for truthiness
    end 
    
    ####I am on 33:05 on the video https://learn.co/tracks/full-stack-web-development-v6/sinatra/activerecord/video-review-authentication
  
end 