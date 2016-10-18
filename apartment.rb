require_relative 'room'

class Apartment
	attr_reader :monthly_rent, :rooms, :number

	def initialize (args = {})
		@number = args.fetch(:number,'')
		@rooms = args.fetch(:rooms, [])
		@monthly_rent = args.fetch(:monthly_rent, 1000)
	end 

	def total_sqft
		rooms.inject(0) { |sum, room| room.sqft + sum }
	end 

	def price_per_sqft
		monthly_rent/total_sqft.to_f
	end 

	def room_count 
		rooms.size
	end 

	def bedroom_count
		bedroom_count = rooms.select { |room| room.name == 'bedroom'}
		bedroom_count.length
	end

end


