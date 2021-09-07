module ApplicationsHelper
    def user_id_field(application)
        if application.user.nil?
            select_tag "application[user_id]", options_from_collection_for_select(User.all, :id, :username)
          else
            hidden_field_tag "application[user_id]", application.user_id
          end 
    end
end
