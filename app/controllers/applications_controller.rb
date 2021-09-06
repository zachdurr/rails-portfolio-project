class ApplicationsController < ApplicationController
    def index
        @applications = Application.all 
    end

    def show
        @application = Application.find(params[:id])
        @interview = @application.interviews.build(user_id: current_user.id)
    end

    def new
        @application = Application.new
    end

    def create
        attraction = Application.create(attraction_params)
        redirect_to attraction_path(attraction)
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

    private

    def attraction_params
        params.require(:attraction).permit(:resume, :cover_letter, :additional_information)
    end

end
