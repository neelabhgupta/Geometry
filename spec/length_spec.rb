require 'spec_helper'

describe Length do

  context "Conversion" do
    it "A side with 10 cm is equal to 0.1 m" do
      length = Length.new(10, 'cm')
      expect(length.to_s).to eq('0.1 m')
    end
  end
end
