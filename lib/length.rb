#Length in metres
class Length
  UNIT = 'm'
  attr_reader :length_m, :unit
  def initialize(length, unit)
    @length_m = convert_to_m(length.to_f, unit)
  end

  def convert_to_m(side, unit)
    if unit == 'cm'
      side = side / 100
    elsif unit == 'mm'
      side = side / 1000
    end
    side
  end

  def to_s
    length_m.to_s + " #{UNIT}"
  end
end
