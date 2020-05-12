class ChildrenController < ApplicationController

   get '/children' do
      if logged_in?
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
      if logged_in?
         child = current_user.children.build(params)
         if child.save
            redirect "/children/#{child.id}"
         else
            redirect '/children/new'
         end
      else
         redirect '/'
      end
   end

   get '/children/:id' do
      if logged_in?
         @child = current_user.children.find_by(id: params[:id])
         if @child
            erb :'children/show'
         else
            redirect "/children"
         end
      else
         redirect '/'
      end
   end

   get '/children/:id/edit' do
      if logged_in?
         @child = current_user.children.find_by(id: params[:id])
         if @child
            erb :'children/edit'
         else
            redirect "/children"
         end
      else
         redirect '/'
      end
   end

   patch '/children/:id' do
      if logged_in?
         if child = current_user.children.find_by(id: params[:id])
            if child.update(params.except(:id, :_method))
               redirect "/children/#{child.id}"
            else
               redirect "/children/#{child.id}/edit"
            end
         else
            redirect '/children'
         end
      else
         redirect '/'
      end
   end

   delete '/children/:id' do
      if logged_in?
         if child = current_user.children.find_by(id: params[:id])
            if child
               child.destroy
               redirect '/children'
            else
               redirect '/children'
            end
         end
      else
         redirect '/'
      end
   end

end
