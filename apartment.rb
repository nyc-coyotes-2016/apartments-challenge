class Apartment

	attr_reader :number, :rooms, :monthly_rent, :total_sqft, :bedroom_count, :room_count, :price_per_sqft

	def initialize(args = {})
		@number = args.fetch(:number, 0)
		@rooms = args.fetch(:rooms, Array.new)
		@monthly_rent = args.fetch(:monthly_rent, 1000)

		@total_sqft = rooms.inject(0) { |total, room| total + room.sqft }
		@price_per_sqft = @monthly_rent / @total_sqft.to_f
		@room_count = rooms.count
		@bedroom_count = rooms.count { |room| room.name == 'bedroom' }
	end

end
