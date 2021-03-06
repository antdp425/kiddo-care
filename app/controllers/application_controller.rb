require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "k!dd0c@r3"
  end

  not_found do
    redirect '/dashboard'
  end

  get "/" do
    if logged_in?
      redirect '/dashboard'
    else
      erb :'welcome'
    end
  end

  helpers do

    def logged_in?
      !!current_user
    end

    def current_user
      @user ||= User.find_by(id: session[:user_id])
    end
    
  end

end
