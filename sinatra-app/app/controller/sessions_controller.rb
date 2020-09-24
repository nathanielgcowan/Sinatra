class SessionsController < ApplicationController 
  
  get '/login' do 
    erb :"sessions/login.html"
  end
  
  
  post '/sessions' do
    #this routes is processing their login
    #the goal is to get their data to session
    session [:email] = params[:email]
    #then bring them to post
    redirect '/posts'
  end 
  
end 