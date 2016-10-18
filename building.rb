require_relative 'apartment'
require_relative 'room'

class Building
	attr_reader :apartments

	def initialize( args = {})
		@apartments = args.fetch(:apartments,[])
		@address = args.fetch(:address,"")
	end 

	def total_room_count
		apartments.rooms.size
	end 

	def total_monthly_revenue
		apartments.inject(0) { |apartment, sum| apartment.monthly_rent + sum }
	end 

	def apartments_by_rent 
		apartments.sort_by { |monthly_rent| apartment.monthly_rent }.reverse
	end 

	def find_apartments_by_bedroom_count(num_of_bedrooms)
		apartments.find { |apartment| apartment.bedroom_count == num_of_bedrooms }
	end 

	def total_sqft 
		apartments.rooms.inject(0) { |room, sum| room.sqft + sum }
	end 

end












