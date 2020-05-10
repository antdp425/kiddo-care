class UsersController < ApplicationController
   
   get '/dashboard' do
      if logged_in?
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

end