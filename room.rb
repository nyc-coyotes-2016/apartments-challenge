class Room
	attr_accessor :sqft, :name

	def initialize(args={})
		@name = args.fetch(:name , "bedroom")
		@sqft = args.fetch(:sqft,120)
		@windows = args.fetch(:windows, rand(0..2) )
	end

end
