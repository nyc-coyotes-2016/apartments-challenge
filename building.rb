class Building

	attr_reader :address
	attr_accessor :apartments, :total_room_count, :total_monthly_revenue, :total_sqft

	def initialize(args = {})
		@address = args.fetch(:address, "")
		@apartments = args.fetch(:apartments, Array.new)

		@total_room_count = apartments.inject(0) { |total, apartment| total + apartment.room_count }
		@total_monthly_revenue = apartments.inject(0) { |total, apartment| total + apartment.monthly_rent }
		@total_sqft = apartments.inject(0) { |total, apartment| total + apartment.total_sqft }
	end

	def apartments_by_rent
		# negative in front of apartments.monthly_rent reverses
		# the standard Ruby sort order from ascending, to
		# descending
		apartments.sort_by { |apartment| -apartment.monthly_rent }
	end

	def find_apartments_by_bedroom_count(num_of_bedrooms)
		apartments.find { |apartment| apartment.bedroom_count == num_of_bedrooms }
	end

end
