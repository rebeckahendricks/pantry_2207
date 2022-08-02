require './lib/ingredient'
require './lib/pantry'

describe Ingredient do
  describe 'initialize' do
    before do
      @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    end

    xit 'exists' do
      expect(@ingredient1).to be_instance_of(Ingredient)
    end

    xit 'has a name' do
      expect(@ingredient1.name).to eq("Cheese")
    end

    xit 'has a unit' do
      expect(@ingredient1.unit).to eq("oz")
    end

    xit 'has calories' do
      expect(@ingredient1.calories).to eq(50)
    end
  end
end
