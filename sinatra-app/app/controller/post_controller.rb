class PostController < ApplicationController 
  
  get '/posts' do 
    ##raise session[:email].inspect
    "You are logged in as #{session[:email]}"
  end 
  
end 
    