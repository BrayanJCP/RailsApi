class Api::V1::RecordingController < ApiController
    before_action :set_location
    def index
        if @location.nil?
            @recording='No hay registros'
        else 
            @recording=@location.recordings
        end
    end
    def create
        recording_params = params.require(:recording).permit(:status, :temp)
        @recording=@location.recordings.create(recording_params)
    end
    private
    def set_location
        @location=Location.find(params[:location_id])
    end
end
