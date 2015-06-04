#Represents a rectangle given by its length and breadth and the related operations
class Rectangle
  attr_reader :length_m, :breadth_m
  def initialize(length,breadth)
    length_params = length.split
    @length_m = convert_to_m(length_params[0].to_f, length_params[1])
    breadth_params = breadth.split
    @breadth_m = convert_to_m(breadth_params[0].to_f, breadth_params[1])
  end

  def perimeter
    (2 * (length_m + breadth_m)).to_s + " m" 
  end

  def convert_to_m(side, dimension)
    if dimension == 'cm'
      side = side / 100
    elsif dimension == 'mm'
      side = side / 1000
    end
    side
  end

end