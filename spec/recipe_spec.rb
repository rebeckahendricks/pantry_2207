require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'
require './lib/pantry'

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

    it 'can add ingredients' do
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
  describe 'counting calories' do
    before do
      @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
      @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
      @recipe1 = Recipe.new("Mac and Cheese")

      @recipe1.add_ingredient(@ingredient1, 2)
      @recipe1.add_ingredient(@ingredient2, 8)

      @ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
      @ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
      @recipe2 = Recipe.new("Cheese Burger")

      @recipe2.add_ingredient(@ingredient1, 2)
      @recipe2.add_ingredient(@ingredient3, 4)
      @recipe2.add_ingredient(@ingredient4, 1)
    end

    it 'can add the total calories of all ingredients in a recipe' do
      expect(@recipe1.total_calories).to eq(440)
      expect(@recipe2.total_calories).to eq(675)
    end
  end
end
