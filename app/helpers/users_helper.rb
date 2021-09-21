module UsersHelper
    def user_is_authenticated
        !!current_user
      end
    
      def current_user
        User.find_by(id: session[:user_id])
      end
    
end
