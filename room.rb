class Room
  attr_accessor :name
  attr_reader :sqft
  def initialize(args={})
    @name  =args.fetch(:name,'bedroom')
    @sqft = args.fetch(:sqft,120)
  end
end
