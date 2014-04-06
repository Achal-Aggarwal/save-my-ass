class WelcomeController < ApplicationController
  def search
  	@location_city = nil
  	@query = false
	@lawyers = []
	if params[:service] != nil && params[:lawyer] != nil

		@query = true

	  	@service_code = params[:service][:code]
		@location_city = params[:lawyer][:location_city]
	
		@service = Service.find_by_code(@service_code);
		lawyers_codes = Service.find(:all,:conditions => [ "code = ?", @service_code]).collect {
	  		|s|  s.lawyer_code  }

	  	@lawyers = Lawyer.find(:all, :conditions => ["location_city in (?) AND code IN (?)", @location_city, lawyers_codes])
	end
  end
end
