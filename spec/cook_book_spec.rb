require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'
require './lib/pantry'

describe CookBook do
  describe 'initialize' do
    before do
      @cookbook = CookBook.new
      @recipe1 = Recipe.new("Mac and Cheese")
      @recipe2 = Recipe.new("Cheese Burger")
    end

    it 'exists' do
      expect(@cookbook).to be_instance_of(CookBook)
    end

    it 'can add recipes' do
      @cookbook.add_recipe(@recipe1)
      @cookbook.add_recipe(@recipe2)

      expect(@cookbook.recipes).to eq([@recipe1, @recipe2])
    end
  end

  describe 'ingredients and highest calorie meal' do
    before do
      @pantry = Pantry.new
      @cookbook = CookBook.new

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

      @cookbook.add_recipe(@recipe1)
      @cookbook.add_recipe(@recipe2)
    end

    it 'can list all ingredients in all its recipes' do
      expect(@cookbook.ingredients).to eq(["Cheese", "Macaroni", "Ground Beef", "Bun"])
    end

    it 'can identify the recipe with the highest calories' do
      expect(@cookbook.highest_calorie_meal).to eq(@recipe2)
    end
  end

  describe 'iteration 4' do
    before do
      @cookbook = CookBook.new
    end

    it 'can return the date created' do
      today = Date.today.strftime("%m-%d-%Y")
      
      expect(@cookbook.date).to eq(today)
    end
  end

end
