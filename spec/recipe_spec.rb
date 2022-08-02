require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'

describe Recipe do
  describe 'initialize' do
    before do
      @recipe1 = Recipe.new("Mac and Cheese")
    end

    it 'exists' do
      expect(@recipe1).to be_instance_of(Recipe)
    end

    it 'has a name' do
      expect(@recipe1.name).to eq("Mac and Cheese")
    end

    it 'has no ingredients required by default' do
      expect(@recipe1.ingredients_required).to eq({})
    end
  end

  describe 'adding ingredients' do
    before do
      @recipe1 = Recipe.new("Mac and Cheese")
      @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
      @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    end

    xit 'can add ingredients' do
      @recipe1.add_ingredient(@ingredient1, 2)
      @recipe1.add_ingredient(@ingredient1, 4)
      @recipe1.add_ingredient(@ingredient2, 8)

      expected_hash = {
        @ingredient1 => 6,
        @ingredient2 => 8
      }

      expect(@recipe1.ingredients_required).to eq(expected_hash)
    end
  end
end
