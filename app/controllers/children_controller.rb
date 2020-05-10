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
      if logged_in?
         erb :'children/new'
      else
         redirect '/'
      end
   end

   post '/children' do
      binding.pry
      child = current_user.children.new(params)
      if child.save
         redirect "/children/#{child.id}"
      else
         redirect '/children/new'
      end
   end

   get '/children/:id' do
      if logged_in?
         user = current_user
         if user.children.find_by(id: params[:id])
            erb :'children/show'
         else
            redirect "/children"
         end
      else
         redirect '/'
      end
   end
end
