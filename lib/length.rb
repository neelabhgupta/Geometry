#Length in metres
class Length
  M_UNIT = 'm'
  CM_UNIT = 'cm'
  MM_UNIT = 'mm'
  attr_reader :length_m
  def initialize(length, unit)
    @length_m = convert_to_m(length.to_f, unit)
  end

  def convert_to_m(side, unit)
    if unit == CM_UNIT
      side = side / 100
    elsif unit == MM_UNIT
      side = side / 1000
    end
    side
  end

  def +(other_length)
    Length.new(length_m + other_length.length_m, M_UNIT)
  end

  def *(scalar)
      Length.new(length_m * scalar, M_UNIT)
  end

  def ==(other_object)
    return false if self.class != other_object.class
    length_m == other_object.length_m
  end

  def hash
    length_m.hash
  end

  alias_method :eql?, :==
end
