class ApplicationsController < ApplicationController
    def index
        @applications = Application.all 
    end

    def show
        @application = Application.find(params[:id])
        @application.user.id = session[:user_id]
        # @interview = @application.interviews.build(user_id: current_user.id)
    end

    def new
        @application = Application.new
        @application.user_id = session[:user_id]
    end

    def create
        application = Application.create(application_params)
        redirect_to application_path(application)
    end

    def edit
        @application = Application.find_by(id: params[:id])
        @interview = @application.interviews.build(user_id: current_user.id)
    end
    
    def update
        application = Application.find_by(id: params[:id])
        application.update(application_params)
        redirect_to application_path(application)
    end

    def destroy
        application = Application.find_by(id: params[:id])
        application.destroy

        redirect_to root_path
    end


    private

    def application_params
        params.require(:application).permit(:title, :resume, :cover_letter, :additional_information, :user_id)
    end

end
