class PagesController < ApplicationController

	layout "for_vendors_layout", only: [:for_vendors]

	def home
	end

	def for_vendors
	end

	def pricing
	end

	def contact_us
	end

	def learn
	end

	def under_construction
	end
	
	def existing_online
	end

	def enroll
		@adopter = Adopter.new
	end

	def update_browser
		render :layout => false
	end

end
