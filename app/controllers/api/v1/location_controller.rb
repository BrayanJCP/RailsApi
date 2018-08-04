class Api::V1::LocationController < ApiController
    def index
      render json:{
          location:Location.all
      }
    end
    def show
        id=params[:id]
        @location = Location.find(id)
        
    end
    def create
        location_params = params.require(:location).permit(:name)
        @location = Location.create(location_params)
        render status: :created
    end
end
