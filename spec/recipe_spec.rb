require './lib/ingredient'
require './lib/recipe'
require './lib/cook_book'

describe Recipe do
  describe 'initialize' do
    before do
      @recipe1 = Recipe.new("Mac and Cheese")
    end

    xit 'exists' do
      expect(@recipe1).to be_instance_of(Recipe)
    end

    xit 'has a name' do
      expect(@recipe1.name).to eq("Mac and Cheese")
    end

    xit 'has no ingredients required by default' do
      expect(@recipe1.ingredients_required).to eq({})
    end
  end
end
