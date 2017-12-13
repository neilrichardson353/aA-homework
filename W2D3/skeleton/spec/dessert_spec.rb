require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: 'Neil') }
  let(:brownie) {Dessert.new("dessert", 3, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq('dessert')
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(3)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.quantity).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Desert.new.('salt', 'lots', neil) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      brownie.add_ingredient('chocolate')
    expect(brownie.ingredients).to include('chocolate')
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredient = ["salt", "chocolate", 'egg']

      ingredient.each do |el|
        brownie.add_ingredient(ingredient)
      end
      expect(brownie.ingredients).to eq(ingredient)
      brownie.mix!
      expect(brownie.ingredients).to eq(ingredients)
      expect(brownie.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      brownie.eat(1)
    expect(brownie.quantity).to eq(2)
    it "raises an error if the amount is greater than the quantity" do
    expect {self.eat('nothing') }.to raise(ArgumentError)
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
  end
end
