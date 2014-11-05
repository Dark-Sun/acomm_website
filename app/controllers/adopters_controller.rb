require 'csv'

class AdoptersController < ApplicationController

	http_basic_authenticate_with name: "droidbrew", password: "droidrama65droidrama65", only: :index

	def index
		@adopters = Adopter.all
		respond_to do |format|
			format.html
			format.csv { send_data @adopters.to_csv }
		end
	end

	def create
		@adopter = Adopter.create(adopter_params)
		@adopter.save
		redirect_to root_path
	end

	private

		def adopter_params
			params.require(:adopter).permit!
		end
end
