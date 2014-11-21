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

	def new
		@adopter = Adopter.new
	end

	def create
		@adopter = Adopter.create(adopter_params)
		if @adopter.save
			flash[:success] = "You have successfully registered"
			redirect_to root_path
		else
			render :new, :anchor => 'form'
		end
	end

	private

		def adopter_params
			params.require(:adopter).permit!
		end
end
