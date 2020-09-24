class PostController < ApplicationController 
  
  get '/posts' do 
    ##raise session[:email].inspect
    "You are logged in as #{session[:email]}"
    "This is a list of publicllly available posts"
  end 
  
  get '/post/new' do 
    #Checking if they are logged in
    #this is what they can't do unless they are logged in
    # if !session[:email] #"if not email---redirect" ## (this is not semantic we put this in the ApplicationController)
    if !logged_in?  
      redirect "/login" #Redirecting if they are not
    else
      "A new post form" #Rendering if they are
    end
  end 
    
    get '/logout' do 
      #all we do to logout is clear the session 
      session.clear
    end
  end
  
  get '/post/:id/edit' do 
    ##Here is another form that needs protection
    #Checking if they are logged in
    #this is what they can't do unless they are logged in
    # if !session[:email] #"if not email---redirect" ## (this is not semantic we put this in the ApplicationController)
    if !logged_in?  
      redirect "/login" #Redirecting if they are not
    else
      "An edit post form" #Rendering if they are
    end
  end 
  
end 
    