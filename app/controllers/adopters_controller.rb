class AdoptersController < ApplicationController

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
