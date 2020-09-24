class SessionsController < ApplicationController 
  
  get '/login' do 
    erb :"sessions/login.html"
  end
  
  
  post '/sessions' do
    #this routes is processing their login
    session [:email] = params[:email]
    redirect '/posts'
  end 
  
end 