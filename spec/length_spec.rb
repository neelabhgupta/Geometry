require 'spec_helper'

describe Length do

  context "Conversion" do
    it "A side with 10.0 cm and 100 mm are equal" do
      length1 = Length.new(10.0, 'cm')
      length2 = Length.new(100, 'mm')
      expect(length1).to eq(length2)
    end
  
  end
end
