require 'spec_helper'

describe Rectangle do

  context "Perimeter" do
    it "is a perimeter with side 1 and 1 should have perimeter as 4.0 m" do
      length = Length.new(1, 'm')
      breadth = Length.new(1, 'm')
      rectangle = Rectangle.new(length, breadth) 
      expect(rectangle.perimeter).to eq('4.0 m')
    end

    it "is a rectangle with side 1.0 m and 10.0 cm should have perimeter as 2.2 m" do
      length = Length.new(1.0, 'm')
      breadth = Length.new(10.0, 'cm')
      rectangle = Rectangle.new(length, breadth)
      expect(rectangle.perimeter).to eq('2.2 m')
    end

    # it "is a rectangle with side 1 m and 1000 mm should have perimeter as 1 m" do
    #   rectangle1 = Rectangle.new('1 m','1000 mm') 
    #   expect(rectangle1.perimeter).to eq('4.0 m')
    # end
  end

 end 