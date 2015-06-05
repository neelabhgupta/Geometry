#Represents a rectangle given by its length and breadth and the related operations
class Rectangle
  attr_reader :length, :breadth
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    (length + breadth) * 2
  end
end