require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type"
      expect(self.initialize('dessert',3, "Neil")).to eq(@type == 'dessert')
    it "sets a quantity"
      expect(self.initialize('dessert',3, "Neil")).to eq(@quantity == 3)
    it "starts ingredients as an empty array"
      expect(self.initialize('dessert',3, "Neil")).to eq(@ingredients == [])
    it "raises an argument error when given a non-integer quantity"
      expect { self.initialize('dessert',"3", "Neil") }.to raise_error(ArgumentError)
  end
=begin
  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
=end
end
