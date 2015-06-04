require 'spec_helper'

describe Rectangle do

  context "Perimeter" do
    it "is a perimeter with side 1 and 1 should have perimeter as 4.0 m" do
      rectangle1 = Rectangle.new('1 m','1 m') 
      expect(rectangle1.perimeter).to eq('4.0 m')
    end

    it "is a rectangle with side 1 m and 100 cm should have perimeter as 1 m" do
      rectangle1 = Rectangle.new('1 m','100 cm') 
      expect(rectangle1.perimeter).to eq('4.0 m')
    end

    it "is a rectangle with side 1 m and 1000 mm should have perimeter as 1 m" do
      rectangle1 = Rectangle.new('1 m','1000 mm') 
      expect(rectangle1.perimeter).to eq('4.0 m')
    end
  end

 end 