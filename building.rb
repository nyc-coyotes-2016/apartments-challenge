

class Building
	attr_reader :apartments

	def initialize( args = {})
		@apartments = args.fetch(:apartments,[])
		@address = args.fetch(:address,"")
	end 

	def total_room_count
		apartments.inject(0) { |sum, apartment| sum + apartment.room_count }
	end 

	def total_monthly_revenue
		apartments.inject(0) { |sum, apartment| sum + apartment.monthly_rent }
	end 

	def apartments_by_rent
		apartments.sort { |a, b| a.monthly_rent <=> b.monthly_rent }.reverse
	end 

	def find_apartments_by_bedroom_count(num_of_bedrooms)
		apartments.find { |apartment| apartment.bedroom_count == num_of_bedrooms }
	end 

	def total_sqft 
		apartments.inject(0) { |sum, apartment| sum + apartment.total_sqft }
	end 

end















