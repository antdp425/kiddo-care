class ChildrenController < ApplicationController

   get '/children' do
      if logged_in?
         @user = current_user
         erb :'children/index'
      else
         redirect '/'
      end
   end

   get '/children/new' do
      binding.pry
      if logged_in?
         erb :'children/new'
      else
         redirect '/'
      end
   end

   post '/children' do
      child = current_user.children.new(params)
      if child.save
         redirect "/children/#{child.id}"
      else
         redirect '/children/new'
      end
   end

   get '/children/:id' do
      if logged_in?
         erb :'children/show'
      else
         redirect '/'
      end
   end
end
