class WelcomeController < ApplicationController
    skip_before_action :verified_user, only: [:home, :about]
    def home

    end

    def about
        @user = User.find_by(id: params[:id])
    end

    def create
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
            u.image = auth['info']['image']
          end
      
          session[:user_id] = @user.id
      
          render 'welcome/home'
    end
      
        private
      
        def auth
          request.env['omniauth.auth']
        end

end
