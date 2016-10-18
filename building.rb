class Building
	attr_reader :apartments, :address

	def initialize(args={})
		@apartments = args.fetch(:apartments, [])
		@address = args.fetch(:address, "")
	end


	def total_room_count
	    apartments.inject(0) do |total, apartment|
	    total + apartment.room_count
	    end
	end

	def total_monthly_revenue
	    apartments.inject(0) do |total, rent|
	    total + rent.monthly_rent
	    end
	end

	def apartments_by_rent
	    apartments.sort do |apt1, apt2|
	    apt2.monthly_rent <=> apt1.monthly_rent
	    end
	end

	def find_apartments_by_bedroom_count(num)
	    apartments.find do |apartment|
	    apartment.bedroom_count == num
	    end
	end

	def total_sqft
	    apartments.inject(0) do |total, apartment|
	    total + apartment.total_sqft
	    end
	end
end
