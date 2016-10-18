class Building
	attr_reader :apartments
	def initialize(args={})
		@apartments = args.fetch(:apartments, [])
	end

	def total_room_count 
		apartments.reduce(0) do |sum, apartment|
			sum + apartment.room_count
		end
	end

	def total_sqft
		apartments.reduce(0) do |sum, apartment|
			sum + apartment.total_sqft 
		end
	end

	def total_monthly_revenue 
		apartments.reduce(0) do |sum, apartment|
			sum + apartment.monthly_rent 
		end
	end

	def total_monthly_revenue 
		apartments.reduce(0) do |sum, apartment|
			sum + apartment.monthly_rent 
		end
	end

	def apartments_by_rent
		apartments.sort{|low,high| high.monthly_rent <=> low.monthly_rent}
	end

	def find_apartments_by_bedroom_count(count)
		apartments.find {|apartment| apartment.bedroom_count == count}
	end
end
