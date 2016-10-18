class Room

  attr_reader :sqft
  attr_accessor :name

  def initialize(args = {})
    @name = args.fetch(:name, 'bedroom')
    @sqft = args.fetch(:sqft, 120)
    @windows = args.fetch(:windows) { rand(0..2) }
  end


end
