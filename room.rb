class Room
attr_reader :window_count
attr_accessor :name, :sqft

  def initialize(args = {})
    @name = args.fetch(:name, 'bedroom')
    @sqft = args.fetch(:sqft, 120)
    @window_count = args.fetch(:window_count, rand(0..2))
  end

end
