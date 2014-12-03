class Adopter < ActiveRecord::Base

	validates :name,    presence: true
	validates :email,   presence: true
	validates :country, presence: true

	validates :terms_of_service, acceptance: true

	validates_format_of :email , :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |adopter|
	      csv << adopter.attributes.values_at(*column_names)
	    end
	  end
	end

end
