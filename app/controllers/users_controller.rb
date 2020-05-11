class UsersController < ApplicationController
   
   get '/dashboard' do
      if logged_in?
         @time = Time.new.strftime("Today is %A, %B %d, %Y")
         erb :"users/dashboard"
      else
         redirect '/'
      end
   end
   
   get '/signup' do
      if logged_in?
         redirect '/dashboard'
      else
         erb :"users/signup"
      end
   end

   post '/signup' do
      user = User.new(params)
      if user.save
         session[:user_id] = user.id
         redirect '/dashboard'
      else
         redirect '/signup'
      end
   end

   get '/login' do
      if logged_in?
         redirect '/dashboard'
      else
         erb :"users/login"
      end
   end

   post '/login' do
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
         session[:user_id] = user.id
         redirect '/dashboard'
      else
         redirect '/login'
      end
   end

   get '/logout' do
      session.clear
      redirect '/'
   end

end