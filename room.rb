require 'pry'

class Room
  attr_accessor :name, :sqft, :window_count
  def initialize(args = {})
    @name = args.fetch(:name, "bedroom")
    @sqft = args.fetch(:sqft, 120)
    @window_count = args.fetch(:window_count, "")
  end

  def name
    @name
  end

  def sqft
    @sqft
  end

  def window_count
    @window_count
  end

end
