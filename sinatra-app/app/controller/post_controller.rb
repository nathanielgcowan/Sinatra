class PostController < ApplicationController 
  
  get '/posts' do 
    "You ar elogged in as #{session[:email]"