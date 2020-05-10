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
end
