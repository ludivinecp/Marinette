class LocalisationsController < ApplicationController

def index
  @localisations = Localisation.last
  @localisation = Localisation.new
  @forecast = ForecastIO.forecast(:latitude, :longitude)
  

end

	def new
		
	end


def create
   @localisation = Localisation.new(localisation_params)
   if @localisation.save
     redirect_to root_path
   else
     render :new
   end
 end

	def show
	end



	private
 def localisation_params
     params.require(:localisation).permit(:place)
 end
end

