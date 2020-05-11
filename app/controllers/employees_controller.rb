class EmployeesController < ApplicationController

   get '/employees' do
      if logged_in?
         erb :'employees/index'
      else
         redirect '/'
      end
   end

   get '/employees/new' do
      if logged_in?
         erb :'employees/new'
      else
         redirect '/'
      end
   end

   post '/employees' do
      if logged_in?
         employee = current_user.employees.new(params)
         if employee.save
            redirect "/employees/#{employee.id}"
         else
            redirect '/employees/new'
         end
      else
         redirect '/'
      end
   end

   get '/employees/:id' do
      if logged_in?
         @employee = current_user.employees.find_by(id: params[:id])
         if @employee
            erb :'employees/show'
         else
            redirect "/employees"
         end
      else
         redirect '/'
      end
   end

   # get '/employees/:id/edit' do
   #    if logged_in?
   #       @employee = current_user.employees.find_by(id: params[:id])
   #       if @employee
   #          erb :'employees/edit'
   #       else
   #          redirect "/employees"
   #       end
   #    else
   #       redirect '/'
   #    end
   # end

   # patch '/employees/:id' do
   #    if logged_in?
   #       if employee = current_user.employees.find_by(id: params[:id])
   #          if employee.update(params.except(:id, :_method))
   #             redirect "/employees/#{employee.id}"
   #          else
   #             redirect "/employees/#{employee.id}/edit"
   #          end
   #       else
   #          redirect '/employees'
   #       end
   #    else
   #       redirect '/'
   #    end
   # end

   # delete '/employees/:id' do
   #    if logged_in?
   #       if employee = current_user.employees.find_by(id: params[:id])
   #          if employee
   #             employee.destroy
   #             redirect '/employees'
   #          else
   #             redirect '/employees'
   #          end
   #       end
   #    else
   #       redirect '/'
   #    end
   # end

end
