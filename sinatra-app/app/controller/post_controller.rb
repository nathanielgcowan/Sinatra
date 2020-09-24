class PostController < ApplicationController 
  
  get '/posts' do 
    ##raise session[:email].inspect
    "You are logged in as #{session[:email]}"
    "This is a list of publicllly available posts"
  end 
  
  get '/post/new' do 
    #this is what they can't do unless they are logged in
    if session[:email].empty?
      redirect "/login"
    else
      "A new post form"
    end
  
end 
    